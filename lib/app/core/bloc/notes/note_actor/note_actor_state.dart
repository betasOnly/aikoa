part of 'note_actor_bloc.dart';

@freezed
abstract class NoteActorState with _$NoteActorState {
  factory NoteActorState({
    @required List<Note> selected,
    @required int numSelected,
    @required Option<Either<NoteFailure, Unit>> deleteFailureOrSuccessOption,
    @required Option<Either<NoteFailure, Unit>> archiveFailureOrSuccessOption,
  }) = _NoteActorState;

  factory NoteActorState.initial() => NoteActorState(
    selected: [],
    numSelected: 0,
    deleteFailureOrSuccessOption: none(),
    archiveFailureOrSuccessOption: none()
  );

  @late
  bool get isSelecting => numSelected > 0;
}