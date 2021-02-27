part of '../core/database.dart';

class TaskWithDetails extends Task {
  final Tag tag;
  final List<Repeater> repeaters = [];

  TaskWithDetails({@required Task task, this.tag}): super(
    id: task.id, title: task.title, category: tag?.name, child: task.child,
    deadline: task.deadline, completed: task.completed, numTodo: task.numTodo,
    numDone: task.numDone
  );
}

class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().nullable()();
  TextColumn get category => 
    text().nullable().customConstraint('NULL REFERENCES tags(name)')();
  DateTimeColumn get deadline => dateTime().nullable()();
  IntColumn get child => 
    integer().nullable().customConstraint('NULL REFERENCES contents(id)')();
  BoolColumn get completed => boolean().withDefault(Constant(false))();
  IntColumn get numTodo => integer().nullable()();
  IntColumn get numDone => integer().nullable()();
}

class Repeaters extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get pid =>
    integer().nullable().customConstraint('NULL REFERENCES tasks(id)')();
  DateTimeColumn get nextDate => dateTime()();
  DateTimeColumn get start => dateTime().nullable()();
  DateTimeColumn get end => dateTime().nullable()();
  IntColumn get everyDays => integer().nullable()();
  BoolColumn get monday => boolean().withDefault(Constant(false))();
  BoolColumn get tuesday => boolean().withDefault(Constant(false))();
  BoolColumn get wednesday => boolean().withDefault(Constant(false))();
  BoolColumn get thursday => boolean().withDefault(Constant(false))();
  BoolColumn get friday => boolean().withDefault(Constant(false))();
  BoolColumn get saturday => boolean().withDefault(Constant(false))();
  BoolColumn get sunday => boolean().withDefault(Constant(false))();
}