part of 'onboarding_bloc.dart';

@freezed
abstract class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.initialized() = _Initialized;
  const factory OnboardingEvent.createdTask() = _CreatedTask;
  const factory OnboardingEvent.scheduledTask() = _ScheduledTask;
  const factory OnboardingEvent.focusedTask() = _FocusedTask;
  const factory OnboardingEvent.pomodoroUsed() = _PomodoroUsed;
  const factory OnboardingEvent.taskDone() = _TaskDone;
  const factory OnboardingEvent.viewedTasks() = _ViewedTasks;
  const factory OnboardingEvent.viewedNotes() = _ViewedNotes;
  const factory OnboardingEvent.omboardingFinished() = _OnboardingFinished;
}