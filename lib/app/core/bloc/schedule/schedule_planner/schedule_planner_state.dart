part of 'schedule_planner_bloc.dart';

@freezed
abstract class SchedulePlannerState with _$SchedulePlannerState {
  factory SchedulePlannerState({
    @required Option<TimeBox> selected,
    @required Option<Either<ScheduleFailure, Unit>> scheduleFailureOrSuccessOption,
  }) = _SchedulePlannerState;


  factory SchedulePlannerState.initial() => SchedulePlannerState(
    selected: none(),
    scheduleFailureOrSuccessOption: none()
  );

  @late
  bool get isAM => selected.fold(
      () => DateTime.now().hour < 12,
      (timebox) => timebox.start.hour < 12
    );
}
