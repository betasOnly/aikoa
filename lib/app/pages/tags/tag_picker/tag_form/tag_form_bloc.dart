import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/tags/i_tag_repository.dart';
import 'package:Dayly/domain/tags/tag.dart';
import 'package:Dayly/domain/tags/tag_failure.dart';

part 'tag_form_event.dart';
part 'tag_form_state.dart';
part 'tag_form_bloc.freezed.dart';

@injectable
class TagFormBloc extends Bloc<TagFormEvent, TagFormState> {
  final ITagRepository _tagRepository;

  TagFormBloc(this._tagRepository): super(TagFormState.initial());

  @override
  Stream<TagFormState> mapEventToState(
    TagFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield await e.initialTagOption.fold(
          () => state,
          (initialTag) {
            return state.copyWith(
              tag: initialTag,
              isEditing: true,
            );
          },
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          tag: state.tag.copyWith(name: TagName(e.tagStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      deleted: (e) async* {
        Either<TagFailure, Unit> failureOrSuccess;
        failureOrSuccess =  await _tagRepository.delete(state.tag);
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      saved: (e) async* {
        Either<TagFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.tag.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _tagRepository.update(state.tag)
              : await _tagRepository.create(state.tag);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
