import 'dart:async';

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/tasks/task.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'package:Dayly/domain/calendar/calendar.dart';
import 'package:Dayly/domain/calendar/calendar_failure.dart';
import 'package:Dayly/domain/calendar/i_calendar_repository.dart';
import 'package:Dayly/domain/schedule/i_schedule_repository.dart';
import 'package:Dayly/domain/schedule/schedule_failure.dart';
import 'package:Dayly/domain/schedule/timebox.dart';

part 'focus_event.dart';
part 'focus_state.dart';
part 'focus_bloc.freezed.dart';

@injectable
class FocusBloc extends Bloc<FocusEvent, FocusState> {
  final IScheduleRepository _scheduleRepository;
  final ICalendarRepository _calendarRepository;

  FocusBloc(this._scheduleRepository, this._calendarRepository)
      : super(FocusState.initial());

  @override
  Stream<FocusState> mapEventToState(
    FocusEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        final scheduleStream = Rx.combineLatest2<
          Either<ScheduleFailure, Option<TimeBox>>,
          Either<CalendarFailure, Option<Event>>,
          Option<Either<Event,TimeBox>>>(
            _scheduleRepository.watchFocus(),
            _calendarRepository.watchCurrent(),
            (failureOrTimeBox, failureOrEvent) {
              final focusedTask = failureOrTimeBox
                .fold<Option<Either<Event,TimeBox>>>(
                  (failure) => none(),
                  (taskOption) => taskOption.map(
                    (item) => right<Event,TimeBox>(item))
                );
              return failureOrEvent.fold(
                (failure) => focusedTask,
                (eventOption) => eventOption.fold(
                  () => focusedTask,
                  (event) {
                    focusedTask.map((either) => either.map(
                      (timebox) {
                        _scheduleRepository.update(
                          timebox.copyWith(focus: false));
                      }
                    ));
                    return some(left<Event,TimeBox>(event));
                  }
                )
              );
            }
          );

        scheduleStream.listen((focusOption) => focusOption.fold(
          () => add(const FocusEvent.unfocus()),
          (focus) => focus.fold(
            (event) => add(FocusEvent.eventStarted(event)),
            (timebox) => add(FocusEvent.focusedOn(timebox)))
        ));
      },
      focusedOn: (e) async* {
        if (e.timebox.focus) {
          yield FocusState.isTimeBox(e.timebox);
        } else {
          await state.maybeMap(
            isTimeBox: (state) async {
              await _scheduleRepository.update(state.timebox.copyWith(focus: false));
              await _scheduleRepository.update(e.timebox.copyWith(focus: true));
            },
            orElse: () async {
              await _scheduleRepository.update(e.timebox.copyWith(focus: true));
            }
          );
        }
      },
      eventStarted: (e) async* {
        yield FocusState.isEvent(e.event);
      },
      unfocus: (e) async* {
        await state.maybeMap(
          isTimeBox: (state) async {
            await _scheduleRepository.update(state.timebox.copyWith(focus: false));
          },
          orElse: () {}
        );
        yield const FocusState.initial();
      },
      done: (e) async* {
        await state.maybeMap(
          isTimeBox: (state) async {
            await _scheduleRepository.update(
              state.timebox.copyWith(focus: false, done: true));
          },
          orElse: () {}
        );
        yield const FocusState.initial();
      },
    );
  }
}
