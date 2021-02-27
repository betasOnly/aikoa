part of 'task_actor_bloc.dart';

@freezed
abstract class TaskActorEvent with _$TaskActorEvent {
  const factory TaskActorEvent.selected(Task task) = _Selected;
  const factory TaskActorEvent.unselected(Task task) = _Unselected;
  const factory TaskActorEvent.unselectedAll() = _UnselectedAll;
  const factory TaskActorEvent.deleted(Task task) = _Deleted;
  const factory TaskActorEvent.archived(Task task) = _Archived;
  const factory TaskActorEvent.deletedAll() = _DeletedAll;
  const factory TaskActorEvent.archivedAll() = _ArchivedAll;
}