part of 'tags_watcher_cubit.dart';

@freezed
abstract class TagsWatcherState with _$TagsWatcherState {
  const factory TagsWatcherState.initial() = _Initial;
  const factory TagsWatcherState.loadInProgress() = _DataTransferInProgress;
  const factory TagsWatcherState.loadSuccess(UnmodifiableListView<Tag> tags) =
      _LoadSuccess;
  const factory TagsWatcherState.loadFailure(TagFailure tagFailure) =
      _LoadFailure;
}
