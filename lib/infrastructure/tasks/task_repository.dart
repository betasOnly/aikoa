import 'dart:collection';

import 'package:dartz/dartz.dart' hide Task, id;
import 'package:injectable/injectable.dart';
import 'package:moor/moor.dart';

import 'package:Dayly/injection.dart';
import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/tasks/i_task_repository.dart';
import 'package:Dayly/domain/tasks/task_failure.dart';
import 'package:Dayly/domain/tasks/task.dart';
import 'package:Dayly/infrastructure/core/database.dart' hide Task;

import './task_mapper.dart';

@LazySingleton(as: ITaskRepository, env: [Env.dev, Env.prod])
class TaskRepository implements ITaskRepository {
  final AppDatabase _database;

  TaskRepository(this._database);

  @override
  Stream<Either<TaskFailure, UnmodifiableListView<Task>>>
      watchAll() async* {
    yield* _database.tasksDao.watchAll().map(
      (snapshot) {
        return right(UnmodifiableListView<Task>(
          snapshot.map((task) => task.toDomain())
        ));
      }
    );
  }

  @override
  Future<Either<TaskFailure, Task>> getTask(UniqueId id) async {
    try {
      final task = (
        await _database.tasksDao.getTask(int.parse(id.getOrCrash()))).toDomain();
      return right(task);
    } catch (e) {
      return left(const TaskFailure.unexpected());
    }
  }

  @override
  Future<Either<TaskFailure, Unit>> create(Task task) async {
    try {
      await _database.tasksDao.insert(
        fromDomain(task).copyWith(id: Value.absent()));
      return right(unit);
    } catch (e) {
      print(e);
      return left(const TaskFailure.unexpected());
    }
  }

  @override
  Future<Either<TaskFailure, Unit>> update(Task task) async {
    try {
      await _database.tasksDao.updateTask(fromDomain(task));
      return right(unit);
    } catch (e) {
      print(e);
      return left(const TaskFailure.unexpected());
    }
  }

  @override
  Future<Either<TaskFailure, Unit>> delete(Task task) async {
    try {
      await _database.tasksDao.remove(fromDomain(task));
      return right(unit);
    } catch (e) {
      return left(const TaskFailure.unexpected());
    }
  }

  @override
  Future<Either<TaskFailure, Unit>> archive(Task task) async {
    try {
      await _database.tasksDao.archive(fromDomain(task));
      return right(unit);
    } catch (e) {
      return left(const TaskFailure.unexpected());
    }
  }

  TasksCompanion fromDomain(Task task) {
    return TasksCompanion.insert(
      id: Value(task.id.toInt()),
      title: Value(task.title.getOrCrash()),
      category: task.tag.fold(
        () => Value.absent(),
        (tag) => Value(tag.name.getOrCrash())),
      deadline: task.deadline.fold(
        () => Value.absent(),
        (d) => Value(d.fold(
          (f) => f.maybeMap(
            isDueToday: (f) => f.failedValue,
            isOverdue: (f) => f.failedValue,
            orElse: () => d.getOrCrash()
          ),
          (d) => d))
      ),
      child: task.child.fold(
        () => Value.absent(),
        (cid) => Value(cid.toInt())
      )
    );
  }
}
