import 'dart:async';

import 'package:Dayly/domain/notifications/i_notifications_repository.dart';
import 'package:Dayly/domain/notifications/notification.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/scheduler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

part 'pomodoro_event.dart';
part 'pomodoro_state.dart';
part 'pomodoro_bloc.freezed.dart';

@injectable
class PomodoroBloc extends Bloc<PomodoroEvent, PomodoroState> {
  final SharedPreferences _preferences;
  final INotificationsRepository _notificationsRepository;
  PomodoroBloc(this._preferences, this._notificationsRepository)
      : super(const PomodoroState.initial());

  StopWatchTimer _timer;
  Duration focusDuration = Duration(minutes: 25);
  Duration breakDuration = Duration(minutes: 5);

  @override
  Future<void> close() {
    _timer?.dispose();
    return super.close();
  }

  @override
  Stream<PomodoroState> mapEventToState(
    PomodoroEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        if (_preferences.containsKey('focusDuration')) {
          focusDuration = Duration(
            minutes: _preferences.getInt('focusDuration'));
        } else {
          await _preferences.setInt('focusDuration', focusDuration.inMinutes);
        }
        if (_preferences.containsKey('breakDuration')) {
          breakDuration = Duration(
            minutes: _preferences.getInt('breakDuration'));
        } else {
          await _preferences.setInt('breakDuration', breakDuration.inMinutes);
        }
        yield const PomodoroState.initial();
      },
      started: (e) async* {
        yield PomodoroState.focused(focusDuration, 0);
        _initTimer(
          focusDuration,
          () {
            _notificationsRepository.show(Notification.simple(
              'Take a break'
            ));
            add(const PomodoroEvent.breakStarted());
          },
        );
      },
      breakStarted: (e) async* {
        yield PomodoroState.shortBreak(breakDuration, 0);
        _initTimer(
          breakDuration,
          () {
            _notificationsRepository.show(Notification.simple(
              'Break is Over'
            ));
            add(const PomodoroEvent.started());
          }
        );
      },
      tick: (e) async* {
        yield state.maybeMap(
          focused: (_) {
            return PomodoroState.focused(
              timeLeft(focusDuration, e.ticks),
              percentage(focusDuration, e.ticks)
            );
          },
          shortBreak: (_) {
            return PomodoroState.shortBreak(
              timeLeft(breakDuration, e.ticks),
              percentage(breakDuration, e.ticks)
            );
          },
          orElse: () => state
        );
      },
      paused: (e) async* {
        _timer.onExecute.add(StopWatchExecute.stop);
        yield state.maybeMap(
          focused: (state) {
            return PomodoroState.focusPaused(state.duration, state.percentage);
          },
          shortBreak: (state) {
            return PomodoroState.breakPaused(state.duration, state.percentage);
          },
          orElse: () => state
        );
      },
      resumed: (e) async* {
        _timer.onExecute.add(StopWatchExecute.start);
        yield state.maybeMap(
          focusPaused: (state) {
            return PomodoroState.focused(state.duration, state.percentage);
          },
          breakPaused: (state) {
            return PomodoroState.shortBreak(state.duration, state.percentage);
          },
          orElse: () => state
        );
      },
      reseted: (e) async* {
        _timer.onExecute.add(StopWatchExecute.reset);
        yield const PomodoroState.initial();
      },
      focusDurationChanged: (e) async* {
        focusDuration = e.duration;
        await _preferences.setInt('focusDuration', focusDuration.inMinutes);
      },
      shortBreakDurationChanged: (e) async* {
        breakDuration = e.duration;
        await _preferences.setInt('breakDuration', breakDuration.inMinutes);
      },
    );
  }

  void _initTimer(Duration duration, VoidCallback onEnd){
    _timer?.onExecute?.add(StopWatchExecute.reset);
    _timer = StopWatchTimer(
      onChangeRawSecond: (tick) {
        add(PomodoroEvent.tick(tick));
      },
      onChangeRawMinute: (minute) {
        if (minute == duration.inMinutes) {
          _timer.onExecute.add(StopWatchExecute.stop);
          onEnd();
        }
      }
    );
    _timer.onExecute.add(StopWatchExecute.start);
  }

  Duration timeLeft(Duration duration, int ticks) {
    int minutes = duration.inMinutes - (ticks + 59) ~/ 60;
    int seconds = (60-ticks) % 60;
    return Duration(minutes: minutes, seconds: seconds);
  }

  double percentage(Duration duration, int ticks) {
    return ticks / duration.inSeconds;
  }
}
