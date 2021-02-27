import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:Dayly/domain/core/entity.dart';
import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/tasks/task.dart';

part 'timebox.freezed.dart';

@freezed
abstract class TimeBox with _$TimeBox implements IEntity {
  const factory TimeBox({
    @required UniqueId id,
    @required Either<DateTime, TimeSlot> timeSlot,
    @required Task task,
    @required bool focus,
    @required bool done,
  }) = _TimeBox;

  factory TimeBox.fromTask(Task task) {
    final now = DateTime.now();
    return TimeBox(
      id: UniqueId(),
      timeSlot: left(DateTime(now.year, now.month, now.day, 23, 59)),
      task: task,
      focus: false,
      done: false
    );
  }
}

extension TimeBoxX on TimeBox {
  DateTime get start => timeSlot.fold(
    (date) => date,
    (slot) => slot.start);
  DateTime get end => timeSlot.fold(
    (_) => null,
    (slot) => slot.end);
}