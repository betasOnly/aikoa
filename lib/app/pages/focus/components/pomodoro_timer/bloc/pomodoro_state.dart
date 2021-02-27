part of 'pomodoro_bloc.dart';

@freezed
abstract class PomodoroState with _$PomodoroState {
  const factory PomodoroState.initial() = _Initial;
  const factory PomodoroState.focused(Duration duration, double percentage)
    = _Focused;
  const factory PomodoroState.shortBreak(Duration duration, double percentage)
    = _ShortBreak;
  const factory PomodoroState.focusPaused(Duration duration, double percentage)
    = _FocusPaused;
  const factory PomodoroState.breakPaused(Duration duration, double percentage)
    = _BreakPaused;
}
