import 'package:dartz/dartz.dart' hide id;
import 'package:device_calendar/device_calendar.dart' as device;

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/calendar/calendar.dart';
import 'package:Dayly/domain/calendar/reminder.dart';
import 'package:Dayly/domain/calendar/value_objects.dart';

extension CalendarDeviceX on device.Calendar {
  Calendar toDomain() {
    return Calendar(id: UniqueId.fromUniqueString(id), name: name);
  }
}

extension EventDeviceX on device.Event {
  Event toDomain() {
    return Event(
        id: UniqueId.fromUniqueString(eventId),
        title: EventTitle(title),
        body: option(description != null && description.isNotEmpty,
            EventBody(description?? '')),
        timeSlot: TimeSlot(start, end),
        isAllDay: allDay?? false,
        reminders: option(reminders != null && reminders.isNotEmpty,
            reminders.map((reminder) => reminder.toDomain()).toList()));
  }
}

extension EventDomainX on Event {
  device.Event toDevice(String calendarId) {
    final event = device.Event(
      calendarId,
      eventId: id.getOrElse((_) => null),
      title: title.getOrCrash(),
      description: body.fold(() => null, (b) => b.getOrCrash()),
      start: timeSlot.getOrCrash().value1,
      end: timeSlot.getOrCrash().value2,
      allDay: isAllDay,
    );
    event.reminders = [];
    for (Reminder reminder in reminders.getOrElse(() => [])) {
      event.reminders.add(reminder.toDevice());
    }
    return event;
  }
}

extension ReminderDeviceX on device.Reminder {
  Reminder toDomain() {
    return Reminder(id: UniqueId(), minutes: MinutesBefore(minutes));
  }
}

extension ReminderDomainX on Reminder {
  device.Reminder toDevice() {
    return device.Reminder(minutes: inMinutes);
  }
}

