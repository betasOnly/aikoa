import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';
part 'onboarding_bloc.freezed.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingState.done());

  @override
  Stream<OnboardingState> mapEventToState(
    OnboardingEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield const OnboardingState.createTask();
      },
      createdTask: (e) async* {
        yield const OnboardingState.scheduleTask();
      },
      scheduledTask: (e) async* {
        yield const OnboardingState.focusTask();
      },
      focusedTask: (e) async* {
        yield const OnboardingState.pomodoroMode();
      },
      pomodoroUsed: (e) async* {
        yield const OnboardingState.checkTask();
      },
      taskDone: (e) async* {
        yield const OnboardingState.viewTasks();
      },
      viewedTasks: (e) async* {
        yield const OnboardingState.viewNotes();
      },
      viewedNotes: (e) async* {
        yield const OnboardingState.done();
      },
      omboardingFinished: (e) async* {
        yield const OnboardingState.done();
      },
    );
  }
}
