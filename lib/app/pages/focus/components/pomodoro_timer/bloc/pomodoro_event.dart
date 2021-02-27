part of 'pomodoro_bloc.dart';

@freezed
abstract class PomodoroEvent with _$PomodoroEvent {
  const factory PomodoroEvent.initialized() = _Initialized;
  const factory PomodoroEvent.tick(int ticks) = _Tick;
  const factory PomodoroEvent.started() = _Started;
  const factory PomodoroEvent.breakStarted() = _BreakStarted;
  const factory PomodoroEvent.paused() = _Paused;
  const factory PomodoroEvent.resumed() = _Resumed;
  const factory PomodoroEvent.reseted() = _Reseted;
  const factory PomodoroEvent.focusDurationChanged(Duration duration)
      = _FocusDurationChanged;
  const factory PomodoroEvent.shortBreakDurationChanged(Duration duration)
      = _ShortBreakDurationChanged;
}