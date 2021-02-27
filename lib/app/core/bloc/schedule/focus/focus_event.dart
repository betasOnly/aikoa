part of 'focus_bloc.dart';

@freezed
abstract class FocusEvent with _$FocusEvent {
  const factory FocusEvent.initialized() = _Initialized;
  const factory FocusEvent.focusedOn(TimeBox timebox) = _FocusedOn;
  const factory FocusEvent.eventStarted(Event event) = _EventStarted;
  const factory FocusEvent.unfocus() = _Unfocus;
  const factory FocusEvent.done() = _Done;
}