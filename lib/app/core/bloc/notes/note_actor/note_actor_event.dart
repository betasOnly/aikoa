part of 'note_actor_bloc.dart';

@freezed
abstract class NoteActorEvent with _$NoteActorEvent {
  const factory NoteActorEvent.selected(Note note) = _Selected;
  const factory NoteActorEvent.unselected(Note note) = _Unselected;
  const factory NoteActorEvent.unselectedAll() = _UnselectedAll;
  const factory NoteActorEvent.deleted(Note note) = _Deleted;
  const factory NoteActorEvent.archived(Note note) = _Archived;
  const factory NoteActorEvent.deletedAll() = _DeletedAll;
  const factory NoteActorEvent.archivedAll() = _ArchivedAll;
}