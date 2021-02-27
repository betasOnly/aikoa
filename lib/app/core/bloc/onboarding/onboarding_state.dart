part of 'onboarding_bloc.dart';

@freezed
abstract class OnboardingState with _$OnboardingState {
  const factory OnboardingState.done() = _Done;
  const factory OnboardingState.createTask() = _CreateTask;
  const factory OnboardingState.scheduleTask() = _ScheduleTask;
  const factory OnboardingState.focusTask() = _FocusTask;
  const factory OnboardingState.pomodoroMode() = _PomodoroMode;
  const factory OnboardingState.checkTask() = _CheckTask;
  const factory OnboardingState.viewTasks() = _ViewTasks;
  const factory OnboardingState.deleteTask() = _DeleteTask;
  const factory OnboardingState.viewNotes() = _ViewNotes;
}
