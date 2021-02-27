part of 'event_watcher_cubit.dart';

@freezed
abstract class EventWatcherState with _$EventWatcherState {
  const factory EventWatcherState.initial() = _Initial;
  const factory EventWatcherState.loadInProgress() = _DataTransferInProgress;
  const factory EventWatcherState.loadSuccess(
      UnmodifiableListView<Event> events) = _LoadSuccess;
  const factory EventWatcherState.loadFailure(
      CalendarFailure calendarFailure) = _LoadFailure;
}
