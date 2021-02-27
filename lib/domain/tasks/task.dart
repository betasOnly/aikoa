import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:Dayly/domain/core/entity.dart';
import 'package:Dayly/domain/core/failures.dart';
import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/tags/tag.dart';

part 'task.freezed.dart';

@freezed
abstract class Task with _$Task implements IEntity {
  const factory Task({
    @required UniqueId id,
    @required CardTitle title,
    @required Option<Tag> tag,
    @required Option<Deadline> deadline,
    @required Option<UniqueId> child,
  }) = _Task;

  factory Task.empty() => Task(
        id: UniqueId(),
        title: CardTitle(''),
        tag: none(),
        deadline: none(),
        child: none()
      );
}

extension TaskX on Task {
  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
