import 'package:dartz/dartz.dart' hide Task, id;

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/schedule/timebox.dart';
import 'package:Dayly/infrastructure/core/database.dart';
import 'package:Dayly/infrastructure/tasks/task_mapper.dart';

extension ScheduleDomainX on ScheduledTask {
  TimeBox toDomain() {
    return TimeBox(
      id: UniqueId.fromUniqueInteger(id),
      timeSlot: end != null
        ? right(TimeSlot(start, end))
        : left(start),
      task: task.toDomain(),
      done: done?? false,
      focus: focus?? false
    );
  }
}