import 'dart:async';

import 'package:Dayly/domain/calendar/calendar.dart';
import 'package:Dayly/domain/calendar/calendar_failure.dart';
import 'package:Dayly/domain/calendar/i_calendar_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'event_actor_event.dart';
part 'event_actor_state.dart';
part 'event_actor_bloc.freezed.dart';

@injectable
class EventActorBloc extends Bloc<EventActorEvent, EventActorState> {
  final ICalendarRepository _calendarRepository;
  EventActorBloc(this._calendarRepository) : super(EventActorState.initial());

  @override
  Stream<EventActorState> mapEventToState(
    EventActorEvent event,
  ) async* {
    yield* event.map(
      deleted: (e) async* {
        final possibleFailure = await _calendarRepository.delete(e.event);
        yield state.copyWith(
          deleteFailureOrSuccessOption: optionOf(possibleFailure)
        );
      },
    );
  }
}
