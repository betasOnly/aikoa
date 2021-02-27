import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:Dayly/domain/calendar/calendar.dart';
import 'package:Dayly/domain/calendar/calendar_failure.dart';
import 'package:Dayly/domain/calendar/i_calendar_repository.dart';
import 'package:Dayly/domain/calendar/reminder.dart';
import 'package:Dayly/domain/calendar/value_objects.dart';
import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/core/extensions.dart';

part 'event_form_event.dart';
part 'event_form_state.dart';
part 'event_form_bloc.freezed.dart';

@injectable
class EventFormBloc extends Bloc<EventFormEvent, EventFormState> {
  final ICalendarRepository _calendarRepository;

  EventFormBloc(this._calendarRepository): super(EventFormState.initial());

  @override
  Stream<EventFormState> mapEventToState(
    EventFormEvent formEvent,
  ) async* {
    yield* formEvent.map(
      initialized: (e) async* {
        yield e.initialEventOption.fold(
          () => state,
          (initialEvent) {
            return state.copyWith(
              event: initialEvent,
              isEditing: true,
            );
          },
        );
      },
      titleChanged: (e) async* {
        yield state.copyWith(
          event: state.event.copyWith(title: EventTitle(e.titleStr)),
        );
      },
      bodyChanged: (e) async* {
        yield state.copyWith(
          event: state.event.copyWith(body: some(EventBody(e.bodyStr))),
        );
      },
      isAllDayChanged: (e) async* {
        yield state.copyWith(
          event: state.event.copyWith(isAllDay: e.isAllDay),
        );
      },
      startDateChanged: (e) async* {
        final duration = state.event.end.difference(state.event.start);
        final start = e.date.setTime(state.event.start.toTimeOfDay());
        yield state.copyWith(
          event: state.event.copyWith(
            timeSlot: TimeSlot(start, start.add(duration))),
        );
      },
      endDateChanged: (e) async* {
        final start = state.event.start;
        final end = e.date.setTime(state.event.end.toTimeOfDay());
        yield state.copyWith(
          event: state.event.copyWith(
            timeSlot: TimeSlot(start, start.isBefore(end) ? end : start)),
        );
      },
      startTimeChanged: (e) async* {
        final duration = state.event.end.difference(state.event.start);
        final start = state.event.start.setTime(e.start);
        yield state.copyWith(
          event: state.event.copyWith(
            timeSlot: TimeSlot(start, start.add(duration))),
        );
      },
      endTimeChanged: (e) async* {
        final start = state.event.start;
        final end = state.event.end.setTime(e.end);
        yield state.copyWith(
          event: state.event.copyWith(
            timeSlot: TimeSlot(start, start.isBefore(end) ? end : start)),
        );
      },
      reminderAdded: (e) async* {
        yield state.copyWith(
          event: state.event.copyWith(
            reminders: some(
              state.event.reminders.getOrElse(() => [])..add(e.reminder)
            )
          ),
        );
      },
      reminderRemoved: (e) async* {
        yield state.copyWith(
          event: state.event.copyWith(
            reminders: some(
              state.event.reminders.getOrElse(() => [])..remove(e.reminder)
            )
          ),
        );
      },
      saved: (e) async* {
        Either<CalendarFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.event.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _calendarRepository.update(state.event)
              : await _calendarRepository.create(state.event);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
