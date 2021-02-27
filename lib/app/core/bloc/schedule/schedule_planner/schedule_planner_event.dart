part of 'schedule_planner_bloc.dart';

@freezed
abstract class SchedulePlannerEvent with _$SchedulePlannerEvent {
  const factory SchedulePlannerEvent.unselected() = _UnSelected;
  const factory SchedulePlannerEvent.selected(TimeBox timebox) = _Selected;
  const factory SchedulePlannerEvent.updated(TimeBox timebox) = _Updated;
  const factory SchedulePlannerEvent.added(TimeBox timebox) = _Added;
  const factory SchedulePlannerEvent.deleted() = _Deleted;
  const factory SchedulePlannerEvent.inserted() = _Inserted;
  const factory SchedulePlannerEvent.meridiemSwitched() = _MeridiemSwitched;
}