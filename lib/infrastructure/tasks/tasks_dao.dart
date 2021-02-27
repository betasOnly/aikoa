part of '../core/database.dart';

@UseDao(tables: [Tasks, Tags, Repeaters, Contents, ContentItems, Schedules])
class TasksDao extends DatabaseAccessor<AppDatabase> with _$TasksDaoMixin {
  TasksDao(AppDatabase db): super(db);

  Stream<List<TaskWithDetails>> watchAll() {
    final taskStream = (select(tasks)
      ..orderBy([(t) => OrderingTerm(expression: t.deadline)])
      ).join([
        leftOuterJoin(tags, tags.name.equalsExp(tasks.category)),
      ])
      .watch()
      .map(
        (rows) => rows.map(
          (row) {
            return TaskWithDetails(
              task: row.readTable(tasks),
              tag: row.readTable(tags),
            );
          }
        ).toList()
      );

    final repeaterStream = select(repeaters).watch();

    return Rx.combineLatest2(taskStream, repeaterStream, 
      (rowsA, rowsB) {
        return rowsA.map<TaskWithDetails>((row) {
          final TaskWithDetails task = row;
          for (final repeater in rowsB)
            if (repeater.readTable(repeaters).pid == task.id)
              task.repeaters.add(repeater.readTable(repeaters));
          return task;
        }).toList();
      }
    );
  }

  Future<TaskWithDetails> getTask(int id) async {
    final task = await (select(tasks)
      ..where((t) => t.id.equals(id))
    ).getSingle();
    final tag = await (select(tags)
      ..where((t) => t.name.equals(task.category))
    ).getSingle();
    final List<Repeater> _repeaters = await (select(repeaters)
      ..where((t) => t.pid.equals(id))
    ).get();

    final taskWithDetails = TaskWithDetails(
      task: task,
      tag: tag,
    );

    for (final repeater in _repeaters)
      taskWithDetails.repeaters.add(repeater);

    return taskWithDetails;
  }

  Future<bool> updateTask(Insertable<Task> task) {
    return update(tasks).replace(task);
  }

  Future<int> insert(Insertable<Task> task) {
    return into(tasks).insert(task);
  }

  Future remove(TasksCompanion task) async {
    await customUpdate(
      'DELETE FROM contents WHERE id = ${task.child.value}',
      variables: [],
      updates: {contents},
      updateKind: UpdateKind.delete
    );
    await customUpdate(
      'DELETE FROM content_items WHERE pid = ${task.child.value}',
      variables: [],
      updates: {contentItems},
      updateKind: UpdateKind.delete
    );
    await customUpdate(
      'DELETE FROM schedules WHERE pid = ${task.id.value}',
      variables: [],
      updates: {schedules},
      updateKind: UpdateKind.delete
    );
    return delete(tasks).delete(task);
  }

  Future archive(TasksCompanion task) {
    // TODO
    return delete(tasks).delete(task);
  }
}