part of 'event_actor_bloc.dart';

@freezed
abstract class EventActorEvent with _$EventActorEvent {
  const factory EventActorEvent.deleted(Event event) = _Deleted;
}