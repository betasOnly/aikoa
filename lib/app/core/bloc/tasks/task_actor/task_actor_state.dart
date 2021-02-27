part of 'task_actor_bloc.dart';

@freezed
abstract class TaskActorState with _$TaskActorState {
  factory TaskActorState({
    @required List<Task> selected,
    @required int numSelected,
    @required Option<Either<TaskFailure, Unit>> deleteFailureOrSuccessOption,
    @required Option<Either<TaskFailure, Unit>> archiveFailureOrSuccessOption,
  }) = _TaskActorState;

  factory TaskActorState.initial() => TaskActorState(
    selected: [],
    numSelected: 0,
    deleteFailureOrSuccessOption: none(),
    archiveFailureOrSuccessOption: none()
  );

  @late
  bool get isSelecting => numSelected > 0;
}
