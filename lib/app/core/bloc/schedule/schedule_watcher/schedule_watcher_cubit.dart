import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'package:Dayly/domain/core/extensions.dart';
import 'package:Dayly/domain/calendar/i_calendar_repository.dart';
import 'package:Dayly/domain/calendar/calendar.dart';
import 'package:Dayly/domain/calendar/calendar_failure.dart';
import 'package:Dayly/domain/schedule/i_schedule_repository.dart';
import 'package:Dayly/domain/schedule/schedule_failure.dart';
import 'package:Dayly/domain/schedule/timebox.dart';

part 'schedule_watcher_state.dart';
part 'schedule_watcher_cubit.freezed.dart';

@injectable
class ScheduleWatcherCubit extends Cubit<ScheduleWatcherState> {
  final IScheduleRepository _scheduleRepository;
  final ICalendarRepository _calendarRepository;

  ScheduleWatcherCubit(this._scheduleRepository, this._calendarRepository)
      : super(ScheduleWatcherState.initial());

  StreamSubscription<Either<
    ScheduleFailure,
    UnmodifiableListView<Either<Event,TimeBox>>>> _scheduleStreamSubscription;

  Future<void> watchUncompleted() async {
    await _scheduleStreamSubscription?.cancel();

    final now = DateTime.now();
    final endOfDay = now.toDate().add(Duration(hours: 23, minutes: 59));
    final scheduleStream = Rx.combineLatest3<
      Either<ScheduleFailure, UnmodifiableListView<TimeBox>>,
      Either<CalendarFailure, UnmodifiableListView<Event>>,
      Either<CalendarFailure, Option<Event>>,
      Either<ScheduleFailure, UnmodifiableListView<Either<Event,TimeBox>>>>(
        _scheduleRepository.watchUncompleted(),
        _calendarRepository.watchEvents(now, endOfDay),
        _calendarRepository.watchCurrent(),
        (failureOrSchedule, failureOrEvents, failureOrCurrent) {
          return failureOrSchedule.fold(
            (failure) => left(failure),
            (schedule) {
              final scheduleAndEvents = schedule.map<Either<Event, TimeBox>>(
                (e) => right(e)).toList();
              return failureOrEvents.fold(
                (failure) => right(UnmodifiableListView(scheduleAndEvents)),
                (events) {
                  final current = failureOrCurrent
                    .getOrElse(() => none())
                    .getOrElse(() => null);
                  for (Event event in events) {
                    if (event.id != current?.id) {
                      scheduleAndEvents.add(left(event));
                    }
                  }
                  scheduleAndEvents.sort((a, b) {
                    final startA = a.fold((l) => l.start, (r) => r.start);
                    final startB = b.fold((l) => l.start, (r) => r.start);
                    return startA.difference(startB).inMinutes;
                  });
                  return right(UnmodifiableListView(scheduleAndEvents));
                }
              );
            }
          );
        }
      );

    _scheduleStreamSubscription = scheduleStream.listen((failureOrSchedule) {
      failureOrSchedule.fold(
        (failure) => emit(ScheduleWatcherState.loadFailure(failure)),
        (schedule) => emit(ScheduleWatcherState.loadSuccess(schedule))
      );
    });
  }

  Future<void> watchTomorrow() async {
    await _scheduleStreamSubscription?.cancel();

    final tomorrow = DateTime.now().toDate().add(Duration(days: 1));
    final endOfDay = tomorrow.add(Duration(hours: 23, minutes: 59));
    final scheduleStream = Rx.combineLatest2<
      Either<ScheduleFailure, UnmodifiableListView<TimeBox>>,
      Either<CalendarFailure, UnmodifiableListView<Event>>,
      Either<ScheduleFailure, UnmodifiableListView<Either<Event,TimeBox>>>>(
        _scheduleRepository.watchTomorrow(),
        _calendarRepository.watchEvents(tomorrow, endOfDay),
        (failureOrSchedule, failureOrEvents) {
          return failureOrSchedule.fold(
            (failure) => left(failure),
            (schedule) {
              final scheduleAndEvents = schedule.map<Either<Event, TimeBox>>(
                (e) => right(e)).toList();
              return failureOrEvents.fold(
                (failure) => right(UnmodifiableListView(scheduleAndEvents)),
                (events) {
                  for (var event in events) {
                    scheduleAndEvents.add(left(event));
                  }
                  scheduleAndEvents.sort((a, b) {
                    final startA = a.fold((l) => l.start, (r) => r.start);
                    final startB = b.fold((l) => l.start, (r) => r.start);
                    return startA.difference(startB).inMinutes;
                  });
                  return right(UnmodifiableListView(scheduleAndEvents));
                }
              );
            }
          );
        }
      );

    _scheduleStreamSubscription = scheduleStream.listen((failureOrSchedule) {
      failureOrSchedule.fold(
        (failure) => emit(ScheduleWatcherState.loadFailure(failure)),
        (schedule) => emit(ScheduleWatcherState.loadSuccess(schedule))
      );
    });
  }

  @override
  Future<void> close() async {
    await _scheduleStreamSubscription.cancel();
    return super.close();
  }
}
