part of 'event_actor_bloc.dart';

@freezed
abstract class EventActorState with _$EventActorState {
  factory EventActorState({
    @required Option<Either<CalendarFailure, Unit>> deleteFailureOrSuccessOption,
  }) = _EventActorState;

  factory EventActorState.initial() => EventActorState(
    deleteFailureOrSuccessOption: none(),
  );
}
