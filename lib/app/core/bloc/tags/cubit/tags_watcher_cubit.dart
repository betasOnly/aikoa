import 'package:Dayly/domain/tags/i_tag_repository.dart';
import 'package:Dayly/domain/tags/tag.dart';
import 'package:Dayly/domain/tags/tag_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tags_watcher_state.dart';
part 'tags_watcher_cubit.freezed.dart';

@injectable
class TagsWatcherCubit extends Cubit<TagsWatcherState> {
  final ITagRepository _tagRepository;

  TagsWatcherCubit(this._tagRepository) : super(TagsWatcherState.initial());

  Future<void> watchAll() async {
    emit(TagsWatcherState.loadInProgress());
    _tagRepository.watchAll().listen(
      (failureOrTagsWatcher) => failureOrTagsWatcher.fold(
          (failure) => emit(TagsWatcherState.loadFailure(failure)),
          (tags) => emit(TagsWatcherState.loadSuccess(tags)),
        )
    );
  }
}
