part of 'focus_bloc.dart';

@freezed
abstract class FocusState with _$FocusState {
  const factory FocusState.initial() = _Initial;
  const factory FocusState.isTimeBox(TimeBox timebox) = _IsTimeBox;
  const factory FocusState.isEvent(Event event) = _IsEvent;
}
