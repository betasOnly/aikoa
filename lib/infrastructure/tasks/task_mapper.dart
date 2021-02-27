import 'package:dartz/dartz.dart' hide Task, id;

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/tags/tag.dart';
import 'package:Dayly/domain/tasks/task.dart' as domain;
import 'package:Dayly/infrastructure/core/database.dart' hide Tag;

extension TaskDomainX on Task {
  domain.Task toDomain() {
    return domain.Task(
      id: UniqueId.fromUniqueInteger(id),
      title: CardTitle(title),
      tag: category != null
        ? some(Tag(name: TagName(category)))
        : none(),
      deadline: deadline != null
        ? some(Deadline(deadline))
        : none(),
      child: child != null ? some(UniqueId.fromUniqueInteger(child)) : none()
    );
  }
}