part of 'schedule_watcher_cubit.dart';

@freezed
abstract class ScheduleWatcherState with _$ScheduleWatcherState {
  const factory ScheduleWatcherState.initial() = _Initial;
  const factory ScheduleWatcherState.loadSuccess(
      UnmodifiableListView<Either<Event, TimeBox>> schedule) = _LoadSuccess;
  const factory ScheduleWatcherState.loadFailure(
      ScheduleFailure scheduleFailure) = _LoadFailure;
}
