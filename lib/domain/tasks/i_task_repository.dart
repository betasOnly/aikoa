import 'dart:collection';

import 'package:dartz/dartz.dart' hide Task;

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/tasks/task.dart';
import 'package:Dayly/domain/tasks/task_failure.dart';

abstract class ITaskRepository {
  Stream<Either<TaskFailure, UnmodifiableListView<Task>>> watchAll();
  Future<Either<TaskFailure, Task>> getTask(UniqueId id);
  Future<Either<TaskFailure, Unit>> create(Task task);
  Future<Either<TaskFailure, Unit>> update(Task task);
  Future<Either<TaskFailure, Unit>> delete(Task task);
  Future<Either<TaskFailure, Unit>> archive(Task task);
}