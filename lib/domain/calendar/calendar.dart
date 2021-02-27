import 'package:Dayly/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:Dayly/domain/core/entity.dart';
import 'package:Dayly/domain/core/extensions.dart';
import 'package:Dayly/domain/core/value_objects.dart';

import 'reminder.dart';
import 'value_objects.dart';

part 'calendar.freezed.dart';

@freezed
abstract class Calendar with _$Calendar implements IEntity {
  const factory Calendar({
    @required UniqueId id,
    @required String name,
  }) = _Calendar;
}

@freezed
abstract class Event with _$Event implements IEntity {
  const factory Event({
    @required UniqueId id,
    @required EventTitle title,
    @required Option<EventBody> body,
    @required TimeSlot timeSlot,
    @required Option<List<Reminder>> reminders,
    bool isAllDay
  }) = _Event;

  factory Event.empty() {
    final DateTime start = DateTime.now().toInterval(15);
    return Event(
      id: UniqueId(),
      title: EventTitle(''),
      timeSlot: TimeSlot(start, start.add(Duration(hours: 1))),
      body: none(),
      reminders: none(),
      isAllDay: false
    );
  }
}

extension EventX on Event {
  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit.fold((f) => some(f), (_) => none());
  }

  DateTime get start => timeSlot.start;
  DateTime get end => timeSlot.end;
}