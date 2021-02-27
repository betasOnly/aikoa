import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/contents/content.dart';
import 'package:Dayly/domain/contents/i_content_repository.dart';

part 'smart_editor_state.dart';
part 'smart_editor_cubit.freezed.dart';

@injectable
class SmartEditorCubit extends Cubit<SmartEditorState> {
  final IContentRepository _contentRepository;
  SmartEditorCubit(this._contentRepository) : super(SmartEditorState.initial());

  Future<void> initialize(UniqueId pid) async {
    final listKey = GlobalKey<AnimatedListState>();
    final failureOrItems = await _contentRepository.items(pid);
    emit(failureOrItems.fold(
      (failure) => state,
      (items) => state.copyWith(listKey: listKey, items: List.from(items))
    ));
  }

  Future<void> select(int index) {
    emit(state.copyWith(
      selected: index,
      selectedType: state.items[index].type,
      controllerOffset: null));
  }

  Future<void> unselect() {
    emit(state.copyWith(
      selected: null,
      selectedType: null,
      controllerOffset: null));
  }

  Future<void> update(ContentItem item) async {
    final index = state.items.indexWhere((e) => e.id == item.id);
    state.items[index] = item;
    emit(state.copyWith(selected: index, controllerOffset: null));
  }

  Future<void> save(ContentItem item) async {
    final index = state.items.indexWhere((e) => e.id == item.id);
    await _contentRepository.update(item);
    if (state.selected == index) {
      emit(state.copyWith(selected: null, controllerOffset: null));
    }
  }

  Future<void> onRemove(ContentItem item) async {
    final index = state.items.indexWhere((e) => e.id == item.id);
    
    if (index > 0) {
      final initialLength = state.items[index-1].body.length;
      state.items[index-1] = state.items[index-1].copyWith(
        body: state.items[index-1].body + item.body
      );
      removeAt(index);
      emit(state.copyWith(
        selected: index - 1,
        selectedType: state.items[index-1].type,
        controllerOffset: initialLength));
    }
  }

  Future<void> onEnter(ContentItem item) async {
    final index = state.items.indexWhere((e) => e.id == item.id);
    final List<String> split = item.body.split('\n');

    await update(item.copyWith(body: split.first));
    await insert(
      index + 1, ContentItem.empty(item.pid).copyWith(body: split.last));
  }

  Future<void> onMove(ContentItem item, AxisDirection upOrDown) {
    final index = state.items.indexWhere((e) => e.id == item.id);
  }

  Future<void> changeType(String type) async {
    type = type != state.selectedType ? type : '';
    update(state.items[state.selected].convertTo(type));
    emit(state.copyWith(selectedType: type));
  }

  Future<void> insert(int index, ContentItem item) async {
    final failureOrId = await _contentRepository.insert(index, item);
    failureOrId.fold(
      (failure) => emit(state),
      (uid) {
        state.items.insert(index, item.copyWith(id: uid));
        state.animatedList.insertItem(index);
        emit(state.copyWith(
          selected: index,
          selectedType: item.type,
          controllerOffset: 0)
        );
      }
    );
  }

  Future<void> removeAt(int index) async {
    final ContentItem item = state.items.removeAt(index);
    if (item != null) {
      await _contentRepository.delete(item);
      state.animatedList.removeItem(
        index,
        (context, animation) => removedItemBuilder(context, item, animation),
      );
    }
  }

  Widget removedItemBuilder(BuildContext context, ContentItem item,
    Animation<double> animation) {
        return Container();
      }
      
}
