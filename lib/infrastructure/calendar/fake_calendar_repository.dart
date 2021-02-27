import 'dart:async';
import 'dart:collection';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:Dayly/injection.dart';
import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/calendar/value_objects.dart';
import 'package:Dayly/domain/calendar/calendar.dart';
import 'package:Dayly/domain/calendar/calendar_failure.dart';
import 'package:Dayly/domain/calendar/i_calendar_repository.dart';

@LazySingleton(as: ICalendarRepository, env: [Env.fake])
class FakeCalendarRepository implements ICalendarRepository {

  static Calendar _calendar = Calendar(id: UniqueId(), name: 'john@gmail.com');
  static UnmodifiableListView<Event> events = UnmodifiableListView<Event>([
    Event(
      id: UniqueId(),
      title: EventTitle('Call with Ritta Laine'),
      timeSlot: TimeSlot(DateTime(2021, 1, 25, 10), DateTime(2021, 1, 25, 10, 30)),
      isAllDay: false,
      body: none(),
      reminders: none()
    ),
    Event(
      id: UniqueId(),
      title: EventTitle('Lunch with Matti'),
      timeSlot: TimeSlot(DateTime(2021, 1, 26, 12), DateTime(2021, 1, 26, 13)),
      isAllDay: false,
      body: none(),
      reminders: none()
    ),
    Event(
      id: UniqueId(),
      title: EventTitle('Sprint Planning'),
      timeSlot: TimeSlot(DateTime(2021, 1, 26, 14), DateTime(2021, 1, 26, 18)),
      isAllDay: false,
      body: none(),
      reminders: none()
    ),
    Event(
      id: UniqueId(),
      title: EventTitle('Landing Page Design Update'),
      timeSlot: TimeSlot(DateTime(2021, 1, 28, 10), DateTime(2021, 1, 28, 11)),
      isAllDay: false,
      body: none(),
      reminders: none()
    ),
    Event(
      id: UniqueId(),
      title: EventTitle('Call with Tahvo Mäkinen'),
      timeSlot: TimeSlot(DateTime(2021, 1, 28, 13, 30), DateTime(2021, 1, 28, 14)),
      isAllDay: false,
      body: none(),
      reminders: none()
    ),
  ]);

  FakeCalendarRepository();

  Stream<Either<CalendarFailure, UnmodifiableListView<Calendar>>>
      watchCalendars() async* {
    yield right(UnmodifiableListView<Calendar>([_calendar]));
  }

  Future<Either<CalendarFailure, Calendar>> get calendar async {
    return right(_calendar);
  }

  Future<String> get calendarId async {
    return (await calendar).fold((f) => null, (c) => c.id.getOrCrash());
  }

  Future<Either<CalendarFailure, Unit>> setCalendar(
      Calendar newCalendar) async {
    return left(const CalendarFailure.unexpected());
  }

  Stream<Either<CalendarFailure, Option<Event>>> watchCurrent() async* {
    yield right(none());
  }

  Stream<Either<CalendarFailure, UnmodifiableListView<Event>>> watchEvents(
      DateTime from, DateTime to) async* {
        final result = events.where((event) {
          return event.start.isAfter(from) && event.start.isBefore(to);
        });
        yield right(UnmodifiableListView(result));
      }

  Future<Either<CalendarFailure, Unit>> create(Event event) async {
    return left(const CalendarFailure.unexpected());
  }

  Future<Either<CalendarFailure, Unit>> update(Event event) async {
    return left(const CalendarFailure.unableToUpdate());
  }

  Future<Either<CalendarFailure, Unit>> delete(Event event) async {
    return left(const CalendarFailure.unableToUpdate());
  }
}
