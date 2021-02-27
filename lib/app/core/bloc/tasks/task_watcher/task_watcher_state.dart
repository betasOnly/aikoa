part of 'task_watcher_cubit.dart';

@freezed
abstract class TaskWatcherState with _$TaskWatcherState {
  const factory TaskWatcherState.initial() = _Initial;
  const factory TaskWatcherState.loadInProgress() = _DataTransferInProgress;
  const factory TaskWatcherState.loadSuccess(UnmodifiableListView<Task> tasks) =
      _LoadSuccess;
  const factory TaskWatcherState.loadFailure(TaskFailure taskFailure) =
      _LoadFailure;
}
