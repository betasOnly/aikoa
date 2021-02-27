part of 'calendar_manager_cubit.dart';

@freezed
abstract class CalendarManagerState with _$CalendarManagerState {
  factory CalendarManagerState({
    @required Option<Calendar> connected,
    @required Option<List<Calendar>> calendars,
    @required Option<Either<CalendarFailure, Unit>> failureOrSuccessOption,
  }) = _CalendarManagerState;

  factory CalendarManagerState.initial() => CalendarManagerState(
    connected: none(),
    calendars: none(),
    failureOrSuccessOption: none()
  );
}
