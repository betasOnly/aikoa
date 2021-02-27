// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Note extends DataClass implements Insertable<Note> {
  final int id;
  final String title;
  final String category;
  final int child;
  Note({@required this.id, this.title, this.category, this.child});
  factory Note.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Note(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      category: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}category']),
      child: intType.mapFromDatabaseResponse(data['${effectivePrefix}child']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    if (!nullToAbsent || child != null) {
      map['child'] = Variable<int>(child);
    }
    return map;
  }

  NotesCompanion toCompanion(bool nullToAbsent) {
    return NotesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      child:
          child == null && nullToAbsent ? const Value.absent() : Value(child),
    );
  }

  factory Note.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Note(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      category: serializer.fromJson<String>(json['category']),
      child: serializer.fromJson<int>(json['child']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'category': serializer.toJson<String>(category),
      'child': serializer.toJson<int>(child),
    };
  }

  Note copyWith({int id, String title, String category, int child}) => Note(
        id: id ?? this.id,
        title: title ?? this.title,
        category: category ?? this.category,
        child: child ?? this.child,
      );
  @override
  String toString() {
    return (StringBuffer('Note(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('category: $category, ')
          ..write('child: $child')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(title.hashCode, $mrjc(category.hashCode, child.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Note &&
          other.id == this.id &&
          other.title == this.title &&
          other.category == this.category &&
          other.child == this.child);
}

class NotesCompanion extends UpdateCompanion<Note> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> category;
  final Value<int> child;
  const NotesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.category = const Value.absent(),
    this.child = const Value.absent(),
  });
  NotesCompanion.insert({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.category = const Value.absent(),
    this.child = const Value.absent(),
  });
  static Insertable<Note> custom({
    Expression<int> id,
    Expression<String> title,
    Expression<String> category,
    Expression<int> child,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (category != null) 'category': category,
      if (child != null) 'child': child,
    });
  }

  NotesCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<String> category,
      Value<int> child}) {
    return NotesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      category: category ?? this.category,
      child: child ?? this.child,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (child.present) {
      map['child'] = Variable<int>(child.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('category: $category, ')
          ..write('child: $child')
          ..write(')'))
        .toString();
  }
}

class $NotesTable extends Notes with TableInfo<$NotesTable, Note> {
  final GeneratedDatabase _db;
  final String _alias;
  $NotesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      true,
    );
  }

  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  GeneratedTextColumn _category;
  @override
  GeneratedTextColumn get category => _category ??= _constructCategory();
  GeneratedTextColumn _constructCategory() {
    return GeneratedTextColumn('category', $tableName, true,
        $customConstraints: 'NULL REFERENCES tags(name)');
  }

  final VerificationMeta _childMeta = const VerificationMeta('child');
  GeneratedIntColumn _child;
  @override
  GeneratedIntColumn get child => _child ??= _constructChild();
  GeneratedIntColumn _constructChild() {
    return GeneratedIntColumn('child', $tableName, true,
        $customConstraints: 'NULL REFERENCES contents(id)');
  }

  @override
  List<GeneratedColumn> get $columns => [id, title, category, child];
  @override
  $NotesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'notes';
  @override
  final String actualTableName = 'notes';
  @override
  VerificationContext validateIntegrity(Insertable<Note> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category'], _categoryMeta));
    }
    if (data.containsKey('child')) {
      context.handle(
          _childMeta, child.isAcceptableOrUnknown(data['child'], _childMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Note map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Note.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $NotesTable createAlias(String alias) {
    return $NotesTable(_db, alias);
  }
}

class Task extends DataClass implements Insertable<Task> {
  final int id;
  final String title;
  final String category;
  final DateTime deadline;
  final int child;
  final bool completed;
  final int numTodo;
  final int numDone;
  Task(
      {@required this.id,
      this.title,
      this.category,
      this.deadline,
      this.child,
      @required this.completed,
      this.numTodo,
      this.numDone});
  factory Task.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Task(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      category: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}category']),
      deadline: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deadline']),
      child: intType.mapFromDatabaseResponse(data['${effectivePrefix}child']),
      completed:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}completed']),
      numTodo:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}num_todo']),
      numDone:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}num_done']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    if (!nullToAbsent || deadline != null) {
      map['deadline'] = Variable<DateTime>(deadline);
    }
    if (!nullToAbsent || child != null) {
      map['child'] = Variable<int>(child);
    }
    if (!nullToAbsent || completed != null) {
      map['completed'] = Variable<bool>(completed);
    }
    if (!nullToAbsent || numTodo != null) {
      map['num_todo'] = Variable<int>(numTodo);
    }
    if (!nullToAbsent || numDone != null) {
      map['num_done'] = Variable<int>(numDone);
    }
    return map;
  }

  TasksCompanion toCompanion(bool nullToAbsent) {
    return TasksCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      deadline: deadline == null && nullToAbsent
          ? const Value.absent()
          : Value(deadline),
      child:
          child == null && nullToAbsent ? const Value.absent() : Value(child),
      completed: completed == null && nullToAbsent
          ? const Value.absent()
          : Value(completed),
      numTodo: numTodo == null && nullToAbsent
          ? const Value.absent()
          : Value(numTodo),
      numDone: numDone == null && nullToAbsent
          ? const Value.absent()
          : Value(numDone),
    );
  }

  factory Task.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Task(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      category: serializer.fromJson<String>(json['category']),
      deadline: serializer.fromJson<DateTime>(json['deadline']),
      child: serializer.fromJson<int>(json['child']),
      completed: serializer.fromJson<bool>(json['completed']),
      numTodo: serializer.fromJson<int>(json['numTodo']),
      numDone: serializer.fromJson<int>(json['numDone']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'category': serializer.toJson<String>(category),
      'deadline': serializer.toJson<DateTime>(deadline),
      'child': serializer.toJson<int>(child),
      'completed': serializer.toJson<bool>(completed),
      'numTodo': serializer.toJson<int>(numTodo),
      'numDone': serializer.toJson<int>(numDone),
    };
  }

  Task copyWith(
          {int id,
          String title,
          String category,
          DateTime deadline,
          int child,
          bool completed,
          int numTodo,
          int numDone}) =>
      Task(
        id: id ?? this.id,
        title: title ?? this.title,
        category: category ?? this.category,
        deadline: deadline ?? this.deadline,
        child: child ?? this.child,
        completed: completed ?? this.completed,
        numTodo: numTodo ?? this.numTodo,
        numDone: numDone ?? this.numDone,
      );
  @override
  String toString() {
    return (StringBuffer('Task(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('category: $category, ')
          ..write('deadline: $deadline, ')
          ..write('child: $child, ')
          ..write('completed: $completed, ')
          ..write('numTodo: $numTodo, ')
          ..write('numDone: $numDone')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          title.hashCode,
          $mrjc(
              category.hashCode,
              $mrjc(
                  deadline.hashCode,
                  $mrjc(
                      child.hashCode,
                      $mrjc(completed.hashCode,
                          $mrjc(numTodo.hashCode, numDone.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Task &&
          other.id == this.id &&
          other.title == this.title &&
          other.category == this.category &&
          other.deadline == this.deadline &&
          other.child == this.child &&
          other.completed == this.completed &&
          other.numTodo == this.numTodo &&
          other.numDone == this.numDone);
}

class TasksCompanion extends UpdateCompanion<Task> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> category;
  final Value<DateTime> deadline;
  final Value<int> child;
  final Value<bool> completed;
  final Value<int> numTodo;
  final Value<int> numDone;
  const TasksCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.category = const Value.absent(),
    this.deadline = const Value.absent(),
    this.child = const Value.absent(),
    this.completed = const Value.absent(),
    this.numTodo = const Value.absent(),
    this.numDone = const Value.absent(),
  });
  TasksCompanion.insert({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.category = const Value.absent(),
    this.deadline = const Value.absent(),
    this.child = const Value.absent(),
    this.completed = const Value.absent(),
    this.numTodo = const Value.absent(),
    this.numDone = const Value.absent(),
  });
  static Insertable<Task> custom({
    Expression<int> id,
    Expression<String> title,
    Expression<String> category,
    Expression<DateTime> deadline,
    Expression<int> child,
    Expression<bool> completed,
    Expression<int> numTodo,
    Expression<int> numDone,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (category != null) 'category': category,
      if (deadline != null) 'deadline': deadline,
      if (child != null) 'child': child,
      if (completed != null) 'completed': completed,
      if (numTodo != null) 'num_todo': numTodo,
      if (numDone != null) 'num_done': numDone,
    });
  }

  TasksCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<String> category,
      Value<DateTime> deadline,
      Value<int> child,
      Value<bool> completed,
      Value<int> numTodo,
      Value<int> numDone}) {
    return TasksCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      category: category ?? this.category,
      deadline: deadline ?? this.deadline,
      child: child ?? this.child,
      completed: completed ?? this.completed,
      numTodo: numTodo ?? this.numTodo,
      numDone: numDone ?? this.numDone,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (deadline.present) {
      map['deadline'] = Variable<DateTime>(deadline.value);
    }
    if (child.present) {
      map['child'] = Variable<int>(child.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    if (numTodo.present) {
      map['num_todo'] = Variable<int>(numTodo.value);
    }
    if (numDone.present) {
      map['num_done'] = Variable<int>(numDone.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('category: $category, ')
          ..write('deadline: $deadline, ')
          ..write('child: $child, ')
          ..write('completed: $completed, ')
          ..write('numTodo: $numTodo, ')
          ..write('numDone: $numDone')
          ..write(')'))
        .toString();
  }
}

class $TasksTable extends Tasks with TableInfo<$TasksTable, Task> {
  final GeneratedDatabase _db;
  final String _alias;
  $TasksTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      true,
    );
  }

  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  GeneratedTextColumn _category;
  @override
  GeneratedTextColumn get category => _category ??= _constructCategory();
  GeneratedTextColumn _constructCategory() {
    return GeneratedTextColumn('category', $tableName, true,
        $customConstraints: 'NULL REFERENCES tags(name)');
  }

  final VerificationMeta _deadlineMeta = const VerificationMeta('deadline');
  GeneratedDateTimeColumn _deadline;
  @override
  GeneratedDateTimeColumn get deadline => _deadline ??= _constructDeadline();
  GeneratedDateTimeColumn _constructDeadline() {
    return GeneratedDateTimeColumn(
      'deadline',
      $tableName,
      true,
    );
  }

  final VerificationMeta _childMeta = const VerificationMeta('child');
  GeneratedIntColumn _child;
  @override
  GeneratedIntColumn get child => _child ??= _constructChild();
  GeneratedIntColumn _constructChild() {
    return GeneratedIntColumn('child', $tableName, true,
        $customConstraints: 'NULL REFERENCES contents(id)');
  }

  final VerificationMeta _completedMeta = const VerificationMeta('completed');
  GeneratedBoolColumn _completed;
  @override
  GeneratedBoolColumn get completed => _completed ??= _constructCompleted();
  GeneratedBoolColumn _constructCompleted() {
    return GeneratedBoolColumn('completed', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _numTodoMeta = const VerificationMeta('numTodo');
  GeneratedIntColumn _numTodo;
  @override
  GeneratedIntColumn get numTodo => _numTodo ??= _constructNumTodo();
  GeneratedIntColumn _constructNumTodo() {
    return GeneratedIntColumn(
      'num_todo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _numDoneMeta = const VerificationMeta('numDone');
  GeneratedIntColumn _numDone;
  @override
  GeneratedIntColumn get numDone => _numDone ??= _constructNumDone();
  GeneratedIntColumn _constructNumDone() {
    return GeneratedIntColumn(
      'num_done',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, title, category, deadline, child, completed, numTodo, numDone];
  @override
  $TasksTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tasks';
  @override
  final String actualTableName = 'tasks';
  @override
  VerificationContext validateIntegrity(Insertable<Task> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category'], _categoryMeta));
    }
    if (data.containsKey('deadline')) {
      context.handle(_deadlineMeta,
          deadline.isAcceptableOrUnknown(data['deadline'], _deadlineMeta));
    }
    if (data.containsKey('child')) {
      context.handle(
          _childMeta, child.isAcceptableOrUnknown(data['child'], _childMeta));
    }
    if (data.containsKey('completed')) {
      context.handle(_completedMeta,
          completed.isAcceptableOrUnknown(data['completed'], _completedMeta));
    }
    if (data.containsKey('num_todo')) {
      context.handle(_numTodoMeta,
          numTodo.isAcceptableOrUnknown(data['num_todo'], _numTodoMeta));
    }
    if (data.containsKey('num_done')) {
      context.handle(_numDoneMeta,
          numDone.isAcceptableOrUnknown(data['num_done'], _numDoneMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Task map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Task.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TasksTable createAlias(String alias) {
    return $TasksTable(_db, alias);
  }
}

class Schedule extends DataClass implements Insertable<Schedule> {
  final int id;
  final int pid;
  final DateTime start;
  final DateTime end;
  final bool focus;
  final bool done;
  Schedule(
      {@required this.id,
      this.pid,
      @required this.start,
      this.end,
      @required this.focus,
      @required this.done});
  factory Schedule.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Schedule(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      pid: intType.mapFromDatabaseResponse(data['${effectivePrefix}pid']),
      start:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}start']),
      end: dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}end']),
      focus: boolType.mapFromDatabaseResponse(data['${effectivePrefix}focus']),
      done: boolType.mapFromDatabaseResponse(data['${effectivePrefix}done']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || pid != null) {
      map['pid'] = Variable<int>(pid);
    }
    if (!nullToAbsent || start != null) {
      map['start'] = Variable<DateTime>(start);
    }
    if (!nullToAbsent || end != null) {
      map['end'] = Variable<DateTime>(end);
    }
    if (!nullToAbsent || focus != null) {
      map['focus'] = Variable<bool>(focus);
    }
    if (!nullToAbsent || done != null) {
      map['done'] = Variable<bool>(done);
    }
    return map;
  }

  SchedulesCompanion toCompanion(bool nullToAbsent) {
    return SchedulesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      pid: pid == null && nullToAbsent ? const Value.absent() : Value(pid),
      start:
          start == null && nullToAbsent ? const Value.absent() : Value(start),
      end: end == null && nullToAbsent ? const Value.absent() : Value(end),
      focus:
          focus == null && nullToAbsent ? const Value.absent() : Value(focus),
      done: done == null && nullToAbsent ? const Value.absent() : Value(done),
    );
  }

  factory Schedule.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Schedule(
      id: serializer.fromJson<int>(json['id']),
      pid: serializer.fromJson<int>(json['pid']),
      start: serializer.fromJson<DateTime>(json['start']),
      end: serializer.fromJson<DateTime>(json['end']),
      focus: serializer.fromJson<bool>(json['focus']),
      done: serializer.fromJson<bool>(json['done']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pid': serializer.toJson<int>(pid),
      'start': serializer.toJson<DateTime>(start),
      'end': serializer.toJson<DateTime>(end),
      'focus': serializer.toJson<bool>(focus),
      'done': serializer.toJson<bool>(done),
    };
  }

  Schedule copyWith(
          {int id,
          int pid,
          DateTime start,
          DateTime end,
          bool focus,
          bool done}) =>
      Schedule(
        id: id ?? this.id,
        pid: pid ?? this.pid,
        start: start ?? this.start,
        end: end ?? this.end,
        focus: focus ?? this.focus,
        done: done ?? this.done,
      );
  @override
  String toString() {
    return (StringBuffer('Schedule(')
          ..write('id: $id, ')
          ..write('pid: $pid, ')
          ..write('start: $start, ')
          ..write('end: $end, ')
          ..write('focus: $focus, ')
          ..write('done: $done')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          pid.hashCode,
          $mrjc(start.hashCode,
              $mrjc(end.hashCode, $mrjc(focus.hashCode, done.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Schedule &&
          other.id == this.id &&
          other.pid == this.pid &&
          other.start == this.start &&
          other.end == this.end &&
          other.focus == this.focus &&
          other.done == this.done);
}

class SchedulesCompanion extends UpdateCompanion<Schedule> {
  final Value<int> id;
  final Value<int> pid;
  final Value<DateTime> start;
  final Value<DateTime> end;
  final Value<bool> focus;
  final Value<bool> done;
  const SchedulesCompanion({
    this.id = const Value.absent(),
    this.pid = const Value.absent(),
    this.start = const Value.absent(),
    this.end = const Value.absent(),
    this.focus = const Value.absent(),
    this.done = const Value.absent(),
  });
  SchedulesCompanion.insert({
    this.id = const Value.absent(),
    this.pid = const Value.absent(),
    @required DateTime start,
    this.end = const Value.absent(),
    this.focus = const Value.absent(),
    this.done = const Value.absent(),
  }) : start = Value(start);
  static Insertable<Schedule> custom({
    Expression<int> id,
    Expression<int> pid,
    Expression<DateTime> start,
    Expression<DateTime> end,
    Expression<bool> focus,
    Expression<bool> done,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pid != null) 'pid': pid,
      if (start != null) 'start': start,
      if (end != null) 'end': end,
      if (focus != null) 'focus': focus,
      if (done != null) 'done': done,
    });
  }

  SchedulesCompanion copyWith(
      {Value<int> id,
      Value<int> pid,
      Value<DateTime> start,
      Value<DateTime> end,
      Value<bool> focus,
      Value<bool> done}) {
    return SchedulesCompanion(
      id: id ?? this.id,
      pid: pid ?? this.pid,
      start: start ?? this.start,
      end: end ?? this.end,
      focus: focus ?? this.focus,
      done: done ?? this.done,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (pid.present) {
      map['pid'] = Variable<int>(pid.value);
    }
    if (start.present) {
      map['start'] = Variable<DateTime>(start.value);
    }
    if (end.present) {
      map['end'] = Variable<DateTime>(end.value);
    }
    if (focus.present) {
      map['focus'] = Variable<bool>(focus.value);
    }
    if (done.present) {
      map['done'] = Variable<bool>(done.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SchedulesCompanion(')
          ..write('id: $id, ')
          ..write('pid: $pid, ')
          ..write('start: $start, ')
          ..write('end: $end, ')
          ..write('focus: $focus, ')
          ..write('done: $done')
          ..write(')'))
        .toString();
  }
}

class $SchedulesTable extends Schedules
    with TableInfo<$SchedulesTable, Schedule> {
  final GeneratedDatabase _db;
  final String _alias;
  $SchedulesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _pidMeta = const VerificationMeta('pid');
  GeneratedIntColumn _pid;
  @override
  GeneratedIntColumn get pid => _pid ??= _constructPid();
  GeneratedIntColumn _constructPid() {
    return GeneratedIntColumn('pid', $tableName, true,
        $customConstraints: 'NULL REFERENCES tasks(id)');
  }

  final VerificationMeta _startMeta = const VerificationMeta('start');
  GeneratedDateTimeColumn _start;
  @override
  GeneratedDateTimeColumn get start => _start ??= _constructStart();
  GeneratedDateTimeColumn _constructStart() {
    return GeneratedDateTimeColumn(
      'start',
      $tableName,
      false,
    );
  }

  final VerificationMeta _endMeta = const VerificationMeta('end');
  GeneratedDateTimeColumn _end;
  @override
  GeneratedDateTimeColumn get end => _end ??= _constructEnd();
  GeneratedDateTimeColumn _constructEnd() {
    return GeneratedDateTimeColumn(
      'end',
      $tableName,
      true,
    );
  }

  final VerificationMeta _focusMeta = const VerificationMeta('focus');
  GeneratedBoolColumn _focus;
  @override
  GeneratedBoolColumn get focus => _focus ??= _constructFocus();
  GeneratedBoolColumn _constructFocus() {
    return GeneratedBoolColumn('focus', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _doneMeta = const VerificationMeta('done');
  GeneratedBoolColumn _done;
  @override
  GeneratedBoolColumn get done => _done ??= _constructDone();
  GeneratedBoolColumn _constructDone() {
    return GeneratedBoolColumn('done', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns => [id, pid, start, end, focus, done];
  @override
  $SchedulesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'schedules';
  @override
  final String actualTableName = 'schedules';
  @override
  VerificationContext validateIntegrity(Insertable<Schedule> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('pid')) {
      context.handle(
          _pidMeta, pid.isAcceptableOrUnknown(data['pid'], _pidMeta));
    }
    if (data.containsKey('start')) {
      context.handle(
          _startMeta, start.isAcceptableOrUnknown(data['start'], _startMeta));
    } else if (isInserting) {
      context.missing(_startMeta);
    }
    if (data.containsKey('end')) {
      context.handle(
          _endMeta, end.isAcceptableOrUnknown(data['end'], _endMeta));
    }
    if (data.containsKey('focus')) {
      context.handle(
          _focusMeta, focus.isAcceptableOrUnknown(data['focus'], _focusMeta));
    }
    if (data.containsKey('done')) {
      context.handle(
          _doneMeta, done.isAcceptableOrUnknown(data['done'], _doneMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Schedule map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Schedule.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SchedulesTable createAlias(String alias) {
    return $SchedulesTable(_db, alias);
  }
}

class Tag extends DataClass implements Insertable<Tag> {
  final String name;
  final String icon;
  Tag({@required this.name, this.icon});
  factory Tag.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return Tag(
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      icon: stringType.mapFromDatabaseResponse(data['${effectivePrefix}icon']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || icon != null) {
      map['icon'] = Variable<String>(icon);
    }
    return map;
  }

  TagsCompanion toCompanion(bool nullToAbsent) {
    return TagsCompanion(
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      icon: icon == null && nullToAbsent ? const Value.absent() : Value(icon),
    );
  }

  factory Tag.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Tag(
      name: serializer.fromJson<String>(json['name']),
      icon: serializer.fromJson<String>(json['icon']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
      'icon': serializer.toJson<String>(icon),
    };
  }

  Tag copyWith({String name, String icon}) => Tag(
        name: name ?? this.name,
        icon: icon ?? this.icon,
      );
  @override
  String toString() {
    return (StringBuffer('Tag(')
          ..write('name: $name, ')
          ..write('icon: $icon')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(name.hashCode, icon.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Tag && other.name == this.name && other.icon == this.icon);
}

class TagsCompanion extends UpdateCompanion<Tag> {
  final Value<String> name;
  final Value<String> icon;
  const TagsCompanion({
    this.name = const Value.absent(),
    this.icon = const Value.absent(),
  });
  TagsCompanion.insert({
    @required String name,
    this.icon = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Tag> custom({
    Expression<String> name,
    Expression<String> icon,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (icon != null) 'icon': icon,
    });
  }

  TagsCompanion copyWith({Value<String> name, Value<String> icon}) {
    return TagsCompanion(
      name: name ?? this.name,
      icon: icon ?? this.icon,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagsCompanion(')
          ..write('name: $name, ')
          ..write('icon: $icon')
          ..write(')'))
        .toString();
  }
}

class $TagsTable extends Tags with TableInfo<$TagsTable, Tag> {
  final GeneratedDatabase _db;
  final String _alias;
  $TagsTable(this._db, [this._alias]);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _iconMeta = const VerificationMeta('icon');
  GeneratedTextColumn _icon;
  @override
  GeneratedTextColumn get icon => _icon ??= _constructIcon();
  GeneratedTextColumn _constructIcon() {
    return GeneratedTextColumn(
      'icon',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [name, icon];
  @override
  $TagsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tags';
  @override
  final String actualTableName = 'tags';
  @override
  VerificationContext validateIntegrity(Insertable<Tag> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('icon')) {
      context.handle(
          _iconMeta, icon.isAcceptableOrUnknown(data['icon'], _iconMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {name};
  @override
  Tag map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Tag.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TagsTable createAlias(String alias) {
    return $TagsTable(_db, alias);
  }
}

class Content extends DataClass implements Insertable<Content> {
  final int id;
  final List<int> childs;
  Content({@required this.id, this.childs});
  factory Content.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Content(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      childs: $ContentsTable.$converter0.mapToDart(
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}childs'])),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || childs != null) {
      final converter = $ContentsTable.$converter0;
      map['childs'] = Variable<String>(converter.mapToSql(childs));
    }
    return map;
  }

  ContentsCompanion toCompanion(bool nullToAbsent) {
    return ContentsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      childs:
          childs == null && nullToAbsent ? const Value.absent() : Value(childs),
    );
  }

  factory Content.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Content(
      id: serializer.fromJson<int>(json['id']),
      childs: serializer.fromJson<List<int>>(json['childs']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'childs': serializer.toJson<List<int>>(childs),
    };
  }

  Content copyWith({int id, List<int> childs}) => Content(
        id: id ?? this.id,
        childs: childs ?? this.childs,
      );
  @override
  String toString() {
    return (StringBuffer('Content(')
          ..write('id: $id, ')
          ..write('childs: $childs')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, childs.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Content && other.id == this.id && other.childs == this.childs);
}

class ContentsCompanion extends UpdateCompanion<Content> {
  final Value<int> id;
  final Value<List<int>> childs;
  const ContentsCompanion({
    this.id = const Value.absent(),
    this.childs = const Value.absent(),
  });
  ContentsCompanion.insert({
    this.id = const Value.absent(),
    this.childs = const Value.absent(),
  });
  static Insertable<Content> custom({
    Expression<int> id,
    Expression<String> childs,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (childs != null) 'childs': childs,
    });
  }

  ContentsCompanion copyWith({Value<int> id, Value<List<int>> childs}) {
    return ContentsCompanion(
      id: id ?? this.id,
      childs: childs ?? this.childs,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (childs.present) {
      final converter = $ContentsTable.$converter0;
      map['childs'] = Variable<String>(converter.mapToSql(childs.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContentsCompanion(')
          ..write('id: $id, ')
          ..write('childs: $childs')
          ..write(')'))
        .toString();
  }
}

class $ContentsTable extends Contents with TableInfo<$ContentsTable, Content> {
  final GeneratedDatabase _db;
  final String _alias;
  $ContentsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _childsMeta = const VerificationMeta('childs');
  GeneratedTextColumn _childs;
  @override
  GeneratedTextColumn get childs => _childs ??= _constructChilds();
  GeneratedTextColumn _constructChilds() {
    return GeneratedTextColumn(
      'childs',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, childs];
  @override
  $ContentsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'contents';
  @override
  final String actualTableName = 'contents';
  @override
  VerificationContext validateIntegrity(Insertable<Content> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    context.handle(_childsMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Content map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Content.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ContentsTable createAlias(String alias) {
    return $ContentsTable(_db, alias);
  }

  static TypeConverter<List<int>, String> $converter0 =
      const ChildIdsConverter();
}

class ContentItem extends DataClass implements Insertable<ContentItem> {
  final int id;
  final int pid;
  final String value;
  final String type;
  final String details;
  ContentItem(
      {@required this.id, this.pid, this.value, this.type, this.details});
  factory ContentItem.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return ContentItem(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      pid: intType.mapFromDatabaseResponse(data['${effectivePrefix}pid']),
      value:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}value']),
      type: stringType.mapFromDatabaseResponse(data['${effectivePrefix}type']),
      details:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}details']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || pid != null) {
      map['pid'] = Variable<int>(pid);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<String>(value);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || details != null) {
      map['details'] = Variable<String>(details);
    }
    return map;
  }

  ContentItemsCompanion toCompanion(bool nullToAbsent) {
    return ContentItemsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      pid: pid == null && nullToAbsent ? const Value.absent() : Value(pid),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      details: details == null && nullToAbsent
          ? const Value.absent()
          : Value(details),
    );
  }

  factory ContentItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ContentItem(
      id: serializer.fromJson<int>(json['id']),
      pid: serializer.fromJson<int>(json['pid']),
      value: serializer.fromJson<String>(json['value']),
      type: serializer.fromJson<String>(json['type']),
      details: serializer.fromJson<String>(json['details']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pid': serializer.toJson<int>(pid),
      'value': serializer.toJson<String>(value),
      'type': serializer.toJson<String>(type),
      'details': serializer.toJson<String>(details),
    };
  }

  ContentItem copyWith(
          {int id, int pid, String value, String type, String details}) =>
      ContentItem(
        id: id ?? this.id,
        pid: pid ?? this.pid,
        value: value ?? this.value,
        type: type ?? this.type,
        details: details ?? this.details,
      );
  @override
  String toString() {
    return (StringBuffer('ContentItem(')
          ..write('id: $id, ')
          ..write('pid: $pid, ')
          ..write('value: $value, ')
          ..write('type: $type, ')
          ..write('details: $details')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(pid.hashCode,
          $mrjc(value.hashCode, $mrjc(type.hashCode, details.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ContentItem &&
          other.id == this.id &&
          other.pid == this.pid &&
          other.value == this.value &&
          other.type == this.type &&
          other.details == this.details);
}

class ContentItemsCompanion extends UpdateCompanion<ContentItem> {
  final Value<int> id;
  final Value<int> pid;
  final Value<String> value;
  final Value<String> type;
  final Value<String> details;
  const ContentItemsCompanion({
    this.id = const Value.absent(),
    this.pid = const Value.absent(),
    this.value = const Value.absent(),
    this.type = const Value.absent(),
    this.details = const Value.absent(),
  });
  ContentItemsCompanion.insert({
    this.id = const Value.absent(),
    this.pid = const Value.absent(),
    this.value = const Value.absent(),
    this.type = const Value.absent(),
    this.details = const Value.absent(),
  });
  static Insertable<ContentItem> custom({
    Expression<int> id,
    Expression<int> pid,
    Expression<String> value,
    Expression<String> type,
    Expression<String> details,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pid != null) 'pid': pid,
      if (value != null) 'value': value,
      if (type != null) 'type': type,
      if (details != null) 'details': details,
    });
  }

  ContentItemsCompanion copyWith(
      {Value<int> id,
      Value<int> pid,
      Value<String> value,
      Value<String> type,
      Value<String> details}) {
    return ContentItemsCompanion(
      id: id ?? this.id,
      pid: pid ?? this.pid,
      value: value ?? this.value,
      type: type ?? this.type,
      details: details ?? this.details,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (pid.present) {
      map['pid'] = Variable<int>(pid.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (details.present) {
      map['details'] = Variable<String>(details.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContentItemsCompanion(')
          ..write('id: $id, ')
          ..write('pid: $pid, ')
          ..write('value: $value, ')
          ..write('type: $type, ')
          ..write('details: $details')
          ..write(')'))
        .toString();
  }
}

class $ContentItemsTable extends ContentItems
    with TableInfo<$ContentItemsTable, ContentItem> {
  final GeneratedDatabase _db;
  final String _alias;
  $ContentItemsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _pidMeta = const VerificationMeta('pid');
  GeneratedIntColumn _pid;
  @override
  GeneratedIntColumn get pid => _pid ??= _constructPid();
  GeneratedIntColumn _constructPid() {
    return GeneratedIntColumn('pid', $tableName, true,
        $customConstraints: 'NULL REFERENCES contents(id)');
  }

  final VerificationMeta _valueMeta = const VerificationMeta('value');
  GeneratedTextColumn _value;
  @override
  GeneratedTextColumn get value => _value ??= _constructValue();
  GeneratedTextColumn _constructValue() {
    return GeneratedTextColumn(
      'value',
      $tableName,
      true,
    );
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  GeneratedTextColumn _type;
  @override
  GeneratedTextColumn get type => _type ??= _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn(
      'type',
      $tableName,
      true,
    );
  }

  final VerificationMeta _detailsMeta = const VerificationMeta('details');
  GeneratedTextColumn _details;
  @override
  GeneratedTextColumn get details => _details ??= _constructDetails();
  GeneratedTextColumn _constructDetails() {
    return GeneratedTextColumn(
      'details',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, pid, value, type, details];
  @override
  $ContentItemsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'content_items';
  @override
  final String actualTableName = 'content_items';
  @override
  VerificationContext validateIntegrity(Insertable<ContentItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('pid')) {
      context.handle(
          _pidMeta, pid.isAcceptableOrUnknown(data['pid'], _pidMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value'], _valueMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type'], _typeMeta));
    }
    if (data.containsKey('details')) {
      context.handle(_detailsMeta,
          details.isAcceptableOrUnknown(data['details'], _detailsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ContentItem map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ContentItem.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ContentItemsTable createAlias(String alias) {
    return $ContentItemsTable(_db, alias);
  }
}

class DaylyStat extends DataClass implements Insertable<DaylyStat> {
  final DateTime date;
  final DateTime shutdownAt;
  final int tasksDone;
  final int tasksTotal;
  final int minutesScheduled;
  final int minutesFocused;
  DaylyStat(
      {@required this.date,
      this.shutdownAt,
      this.tasksDone,
      this.tasksTotal,
      this.minutesScheduled,
      this.minutesFocused});
  factory DaylyStat.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final intType = db.typeSystem.forDartType<int>();
    return DaylyStat(
      date:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}date']),
      shutdownAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}shutdown_at']),
      tasksDone:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tasks_done']),
      tasksTotal: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tasks_total']),
      minutesScheduled: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}minutes_scheduled']),
      minutesFocused: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}minutes_focused']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<DateTime>(date);
    }
    if (!nullToAbsent || shutdownAt != null) {
      map['shutdown_at'] = Variable<DateTime>(shutdownAt);
    }
    if (!nullToAbsent || tasksDone != null) {
      map['tasks_done'] = Variable<int>(tasksDone);
    }
    if (!nullToAbsent || tasksTotal != null) {
      map['tasks_total'] = Variable<int>(tasksTotal);
    }
    if (!nullToAbsent || minutesScheduled != null) {
      map['minutes_scheduled'] = Variable<int>(minutesScheduled);
    }
    if (!nullToAbsent || minutesFocused != null) {
      map['minutes_focused'] = Variable<int>(minutesFocused);
    }
    return map;
  }

  DaylyStatsCompanion toCompanion(bool nullToAbsent) {
    return DaylyStatsCompanion(
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      shutdownAt: shutdownAt == null && nullToAbsent
          ? const Value.absent()
          : Value(shutdownAt),
      tasksDone: tasksDone == null && nullToAbsent
          ? const Value.absent()
          : Value(tasksDone),
      tasksTotal: tasksTotal == null && nullToAbsent
          ? const Value.absent()
          : Value(tasksTotal),
      minutesScheduled: minutesScheduled == null && nullToAbsent
          ? const Value.absent()
          : Value(minutesScheduled),
      minutesFocused: minutesFocused == null && nullToAbsent
          ? const Value.absent()
          : Value(minutesFocused),
    );
  }

  factory DaylyStat.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DaylyStat(
      date: serializer.fromJson<DateTime>(json['date']),
      shutdownAt: serializer.fromJson<DateTime>(json['shutdownAt']),
      tasksDone: serializer.fromJson<int>(json['tasksDone']),
      tasksTotal: serializer.fromJson<int>(json['tasksTotal']),
      minutesScheduled: serializer.fromJson<int>(json['minutesScheduled']),
      minutesFocused: serializer.fromJson<int>(json['minutesFocused']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'date': serializer.toJson<DateTime>(date),
      'shutdownAt': serializer.toJson<DateTime>(shutdownAt),
      'tasksDone': serializer.toJson<int>(tasksDone),
      'tasksTotal': serializer.toJson<int>(tasksTotal),
      'minutesScheduled': serializer.toJson<int>(minutesScheduled),
      'minutesFocused': serializer.toJson<int>(minutesFocused),
    };
  }

  DaylyStat copyWith(
          {DateTime date,
          DateTime shutdownAt,
          int tasksDone,
          int tasksTotal,
          int minutesScheduled,
          int minutesFocused}) =>
      DaylyStat(
        date: date ?? this.date,
        shutdownAt: shutdownAt ?? this.shutdownAt,
        tasksDone: tasksDone ?? this.tasksDone,
        tasksTotal: tasksTotal ?? this.tasksTotal,
        minutesScheduled: minutesScheduled ?? this.minutesScheduled,
        minutesFocused: minutesFocused ?? this.minutesFocused,
      );
  @override
  String toString() {
    return (StringBuffer('DaylyStat(')
          ..write('date: $date, ')
          ..write('shutdownAt: $shutdownAt, ')
          ..write('tasksDone: $tasksDone, ')
          ..write('tasksTotal: $tasksTotal, ')
          ..write('minutesScheduled: $minutesScheduled, ')
          ..write('minutesFocused: $minutesFocused')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      date.hashCode,
      $mrjc(
          shutdownAt.hashCode,
          $mrjc(
              tasksDone.hashCode,
              $mrjc(
                  tasksTotal.hashCode,
                  $mrjc(
                      minutesScheduled.hashCode, minutesFocused.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is DaylyStat &&
          other.date == this.date &&
          other.shutdownAt == this.shutdownAt &&
          other.tasksDone == this.tasksDone &&
          other.tasksTotal == this.tasksTotal &&
          other.minutesScheduled == this.minutesScheduled &&
          other.minutesFocused == this.minutesFocused);
}

class DaylyStatsCompanion extends UpdateCompanion<DaylyStat> {
  final Value<DateTime> date;
  final Value<DateTime> shutdownAt;
  final Value<int> tasksDone;
  final Value<int> tasksTotal;
  final Value<int> minutesScheduled;
  final Value<int> minutesFocused;
  const DaylyStatsCompanion({
    this.date = const Value.absent(),
    this.shutdownAt = const Value.absent(),
    this.tasksDone = const Value.absent(),
    this.tasksTotal = const Value.absent(),
    this.minutesScheduled = const Value.absent(),
    this.minutesFocused = const Value.absent(),
  });
  DaylyStatsCompanion.insert({
    @required DateTime date,
    this.shutdownAt = const Value.absent(),
    this.tasksDone = const Value.absent(),
    this.tasksTotal = const Value.absent(),
    this.minutesScheduled = const Value.absent(),
    this.minutesFocused = const Value.absent(),
  }) : date = Value(date);
  static Insertable<DaylyStat> custom({
    Expression<DateTime> date,
    Expression<DateTime> shutdownAt,
    Expression<int> tasksDone,
    Expression<int> tasksTotal,
    Expression<int> minutesScheduled,
    Expression<int> minutesFocused,
  }) {
    return RawValuesInsertable({
      if (date != null) 'date': date,
      if (shutdownAt != null) 'shutdown_at': shutdownAt,
      if (tasksDone != null) 'tasks_done': tasksDone,
      if (tasksTotal != null) 'tasks_total': tasksTotal,
      if (minutesScheduled != null) 'minutes_scheduled': minutesScheduled,
      if (minutesFocused != null) 'minutes_focused': minutesFocused,
    });
  }

  DaylyStatsCompanion copyWith(
      {Value<DateTime> date,
      Value<DateTime> shutdownAt,
      Value<int> tasksDone,
      Value<int> tasksTotal,
      Value<int> minutesScheduled,
      Value<int> minutesFocused}) {
    return DaylyStatsCompanion(
      date: date ?? this.date,
      shutdownAt: shutdownAt ?? this.shutdownAt,
      tasksDone: tasksDone ?? this.tasksDone,
      tasksTotal: tasksTotal ?? this.tasksTotal,
      minutesScheduled: minutesScheduled ?? this.minutesScheduled,
      minutesFocused: minutesFocused ?? this.minutesFocused,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (shutdownAt.present) {
      map['shutdown_at'] = Variable<DateTime>(shutdownAt.value);
    }
    if (tasksDone.present) {
      map['tasks_done'] = Variable<int>(tasksDone.value);
    }
    if (tasksTotal.present) {
      map['tasks_total'] = Variable<int>(tasksTotal.value);
    }
    if (minutesScheduled.present) {
      map['minutes_scheduled'] = Variable<int>(minutesScheduled.value);
    }
    if (minutesFocused.present) {
      map['minutes_focused'] = Variable<int>(minutesFocused.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DaylyStatsCompanion(')
          ..write('date: $date, ')
          ..write('shutdownAt: $shutdownAt, ')
          ..write('tasksDone: $tasksDone, ')
          ..write('tasksTotal: $tasksTotal, ')
          ..write('minutesScheduled: $minutesScheduled, ')
          ..write('minutesFocused: $minutesFocused')
          ..write(')'))
        .toString();
  }
}

class $DaylyStatsTable extends DaylyStats
    with TableInfo<$DaylyStatsTable, DaylyStat> {
  final GeneratedDatabase _db;
  final String _alias;
  $DaylyStatsTable(this._db, [this._alias]);
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  GeneratedDateTimeColumn _date;
  @override
  GeneratedDateTimeColumn get date => _date ??= _constructDate();
  GeneratedDateTimeColumn _constructDate() {
    return GeneratedDateTimeColumn(
      'date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _shutdownAtMeta = const VerificationMeta('shutdownAt');
  GeneratedDateTimeColumn _shutdownAt;
  @override
  GeneratedDateTimeColumn get shutdownAt =>
      _shutdownAt ??= _constructShutdownAt();
  GeneratedDateTimeColumn _constructShutdownAt() {
    return GeneratedDateTimeColumn(
      'shutdown_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tasksDoneMeta = const VerificationMeta('tasksDone');
  GeneratedIntColumn _tasksDone;
  @override
  GeneratedIntColumn get tasksDone => _tasksDone ??= _constructTasksDone();
  GeneratedIntColumn _constructTasksDone() {
    return GeneratedIntColumn(
      'tasks_done',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tasksTotalMeta = const VerificationMeta('tasksTotal');
  GeneratedIntColumn _tasksTotal;
  @override
  GeneratedIntColumn get tasksTotal => _tasksTotal ??= _constructTasksTotal();
  GeneratedIntColumn _constructTasksTotal() {
    return GeneratedIntColumn(
      'tasks_total',
      $tableName,
      true,
    );
  }

  final VerificationMeta _minutesScheduledMeta =
      const VerificationMeta('minutesScheduled');
  GeneratedIntColumn _minutesScheduled;
  @override
  GeneratedIntColumn get minutesScheduled =>
      _minutesScheduled ??= _constructMinutesScheduled();
  GeneratedIntColumn _constructMinutesScheduled() {
    return GeneratedIntColumn(
      'minutes_scheduled',
      $tableName,
      true,
    );
  }

  final VerificationMeta _minutesFocusedMeta =
      const VerificationMeta('minutesFocused');
  GeneratedIntColumn _minutesFocused;
  @override
  GeneratedIntColumn get minutesFocused =>
      _minutesFocused ??= _constructMinutesFocused();
  GeneratedIntColumn _constructMinutesFocused() {
    return GeneratedIntColumn(
      'minutes_focused',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        date,
        shutdownAt,
        tasksDone,
        tasksTotal,
        minutesScheduled,
        minutesFocused
      ];
  @override
  $DaylyStatsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'dayly_stats';
  @override
  final String actualTableName = 'dayly_stats';
  @override
  VerificationContext validateIntegrity(Insertable<DaylyStat> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date'], _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('shutdown_at')) {
      context.handle(
          _shutdownAtMeta,
          shutdownAt.isAcceptableOrUnknown(
              data['shutdown_at'], _shutdownAtMeta));
    }
    if (data.containsKey('tasks_done')) {
      context.handle(_tasksDoneMeta,
          tasksDone.isAcceptableOrUnknown(data['tasks_done'], _tasksDoneMeta));
    }
    if (data.containsKey('tasks_total')) {
      context.handle(
          _tasksTotalMeta,
          tasksTotal.isAcceptableOrUnknown(
              data['tasks_total'], _tasksTotalMeta));
    }
    if (data.containsKey('minutes_scheduled')) {
      context.handle(
          _minutesScheduledMeta,
          minutesScheduled.isAcceptableOrUnknown(
              data['minutes_scheduled'], _minutesScheduledMeta));
    }
    if (data.containsKey('minutes_focused')) {
      context.handle(
          _minutesFocusedMeta,
          minutesFocused.isAcceptableOrUnknown(
              data['minutes_focused'], _minutesFocusedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {date};
  @override
  DaylyStat map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return DaylyStat.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $DaylyStatsTable createAlias(String alias) {
    return $DaylyStatsTable(_db, alias);
  }
}

class Repeater extends DataClass implements Insertable<Repeater> {
  final int id;
  final int pid;
  final DateTime nextDate;
  final DateTime start;
  final DateTime end;
  final int everyDays;
  final bool monday;
  final bool tuesday;
  final bool wednesday;
  final bool thursday;
  final bool friday;
  final bool saturday;
  final bool sunday;
  Repeater(
      {@required this.id,
      this.pid,
      @required this.nextDate,
      this.start,
      this.end,
      this.everyDays,
      @required this.monday,
      @required this.tuesday,
      @required this.wednesday,
      @required this.thursday,
      @required this.friday,
      @required this.saturday,
      @required this.sunday});
  factory Repeater.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Repeater(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      pid: intType.mapFromDatabaseResponse(data['${effectivePrefix}pid']),
      nextDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}next_date']),
      start:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}start']),
      end: dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}end']),
      everyDays:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}every_days']),
      monday:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}monday']),
      tuesday:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}tuesday']),
      wednesday:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}wednesday']),
      thursday:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}thursday']),
      friday:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}friday']),
      saturday:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}saturday']),
      sunday:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}sunday']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || pid != null) {
      map['pid'] = Variable<int>(pid);
    }
    if (!nullToAbsent || nextDate != null) {
      map['next_date'] = Variable<DateTime>(nextDate);
    }
    if (!nullToAbsent || start != null) {
      map['start'] = Variable<DateTime>(start);
    }
    if (!nullToAbsent || end != null) {
      map['end'] = Variable<DateTime>(end);
    }
    if (!nullToAbsent || everyDays != null) {
      map['every_days'] = Variable<int>(everyDays);
    }
    if (!nullToAbsent || monday != null) {
      map['monday'] = Variable<bool>(monday);
    }
    if (!nullToAbsent || tuesday != null) {
      map['tuesday'] = Variable<bool>(tuesday);
    }
    if (!nullToAbsent || wednesday != null) {
      map['wednesday'] = Variable<bool>(wednesday);
    }
    if (!nullToAbsent || thursday != null) {
      map['thursday'] = Variable<bool>(thursday);
    }
    if (!nullToAbsent || friday != null) {
      map['friday'] = Variable<bool>(friday);
    }
    if (!nullToAbsent || saturday != null) {
      map['saturday'] = Variable<bool>(saturday);
    }
    if (!nullToAbsent || sunday != null) {
      map['sunday'] = Variable<bool>(sunday);
    }
    return map;
  }

  RepeatersCompanion toCompanion(bool nullToAbsent) {
    return RepeatersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      pid: pid == null && nullToAbsent ? const Value.absent() : Value(pid),
      nextDate: nextDate == null && nullToAbsent
          ? const Value.absent()
          : Value(nextDate),
      start:
          start == null && nullToAbsent ? const Value.absent() : Value(start),
      end: end == null && nullToAbsent ? const Value.absent() : Value(end),
      everyDays: everyDays == null && nullToAbsent
          ? const Value.absent()
          : Value(everyDays),
      monday:
          monday == null && nullToAbsent ? const Value.absent() : Value(monday),
      tuesday: tuesday == null && nullToAbsent
          ? const Value.absent()
          : Value(tuesday),
      wednesday: wednesday == null && nullToAbsent
          ? const Value.absent()
          : Value(wednesday),
      thursday: thursday == null && nullToAbsent
          ? const Value.absent()
          : Value(thursday),
      friday:
          friday == null && nullToAbsent ? const Value.absent() : Value(friday),
      saturday: saturday == null && nullToAbsent
          ? const Value.absent()
          : Value(saturday),
      sunday:
          sunday == null && nullToAbsent ? const Value.absent() : Value(sunday),
    );
  }

  factory Repeater.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Repeater(
      id: serializer.fromJson<int>(json['id']),
      pid: serializer.fromJson<int>(json['pid']),
      nextDate: serializer.fromJson<DateTime>(json['nextDate']),
      start: serializer.fromJson<DateTime>(json['start']),
      end: serializer.fromJson<DateTime>(json['end']),
      everyDays: serializer.fromJson<int>(json['everyDays']),
      monday: serializer.fromJson<bool>(json['monday']),
      tuesday: serializer.fromJson<bool>(json['tuesday']),
      wednesday: serializer.fromJson<bool>(json['wednesday']),
      thursday: serializer.fromJson<bool>(json['thursday']),
      friday: serializer.fromJson<bool>(json['friday']),
      saturday: serializer.fromJson<bool>(json['saturday']),
      sunday: serializer.fromJson<bool>(json['sunday']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pid': serializer.toJson<int>(pid),
      'nextDate': serializer.toJson<DateTime>(nextDate),
      'start': serializer.toJson<DateTime>(start),
      'end': serializer.toJson<DateTime>(end),
      'everyDays': serializer.toJson<int>(everyDays),
      'monday': serializer.toJson<bool>(monday),
      'tuesday': serializer.toJson<bool>(tuesday),
      'wednesday': serializer.toJson<bool>(wednesday),
      'thursday': serializer.toJson<bool>(thursday),
      'friday': serializer.toJson<bool>(friday),
      'saturday': serializer.toJson<bool>(saturday),
      'sunday': serializer.toJson<bool>(sunday),
    };
  }

  Repeater copyWith(
          {int id,
          int pid,
          DateTime nextDate,
          DateTime start,
          DateTime end,
          int everyDays,
          bool monday,
          bool tuesday,
          bool wednesday,
          bool thursday,
          bool friday,
          bool saturday,
          bool sunday}) =>
      Repeater(
        id: id ?? this.id,
        pid: pid ?? this.pid,
        nextDate: nextDate ?? this.nextDate,
        start: start ?? this.start,
        end: end ?? this.end,
        everyDays: everyDays ?? this.everyDays,
        monday: monday ?? this.monday,
        tuesday: tuesday ?? this.tuesday,
        wednesday: wednesday ?? this.wednesday,
        thursday: thursday ?? this.thursday,
        friday: friday ?? this.friday,
        saturday: saturday ?? this.saturday,
        sunday: sunday ?? this.sunday,
      );
  @override
  String toString() {
    return (StringBuffer('Repeater(')
          ..write('id: $id, ')
          ..write('pid: $pid, ')
          ..write('nextDate: $nextDate, ')
          ..write('start: $start, ')
          ..write('end: $end, ')
          ..write('everyDays: $everyDays, ')
          ..write('monday: $monday, ')
          ..write('tuesday: $tuesday, ')
          ..write('wednesday: $wednesday, ')
          ..write('thursday: $thursday, ')
          ..write('friday: $friday, ')
          ..write('saturday: $saturday, ')
          ..write('sunday: $sunday')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          pid.hashCode,
          $mrjc(
              nextDate.hashCode,
              $mrjc(
                  start.hashCode,
                  $mrjc(
                      end.hashCode,
                      $mrjc(
                          everyDays.hashCode,
                          $mrjc(
                              monday.hashCode,
                              $mrjc(
                                  tuesday.hashCode,
                                  $mrjc(
                                      wednesday.hashCode,
                                      $mrjc(
                                          thursday.hashCode,
                                          $mrjc(
                                              friday.hashCode,
                                              $mrjc(saturday.hashCode,
                                                  sunday.hashCode)))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Repeater &&
          other.id == this.id &&
          other.pid == this.pid &&
          other.nextDate == this.nextDate &&
          other.start == this.start &&
          other.end == this.end &&
          other.everyDays == this.everyDays &&
          other.monday == this.monday &&
          other.tuesday == this.tuesday &&
          other.wednesday == this.wednesday &&
          other.thursday == this.thursday &&
          other.friday == this.friday &&
          other.saturday == this.saturday &&
          other.sunday == this.sunday);
}

class RepeatersCompanion extends UpdateCompanion<Repeater> {
  final Value<int> id;
  final Value<int> pid;
  final Value<DateTime> nextDate;
  final Value<DateTime> start;
  final Value<DateTime> end;
  final Value<int> everyDays;
  final Value<bool> monday;
  final Value<bool> tuesday;
  final Value<bool> wednesday;
  final Value<bool> thursday;
  final Value<bool> friday;
  final Value<bool> saturday;
  final Value<bool> sunday;
  const RepeatersCompanion({
    this.id = const Value.absent(),
    this.pid = const Value.absent(),
    this.nextDate = const Value.absent(),
    this.start = const Value.absent(),
    this.end = const Value.absent(),
    this.everyDays = const Value.absent(),
    this.monday = const Value.absent(),
    this.tuesday = const Value.absent(),
    this.wednesday = const Value.absent(),
    this.thursday = const Value.absent(),
    this.friday = const Value.absent(),
    this.saturday = const Value.absent(),
    this.sunday = const Value.absent(),
  });
  RepeatersCompanion.insert({
    this.id = const Value.absent(),
    this.pid = const Value.absent(),
    @required DateTime nextDate,
    this.start = const Value.absent(),
    this.end = const Value.absent(),
    this.everyDays = const Value.absent(),
    this.monday = const Value.absent(),
    this.tuesday = const Value.absent(),
    this.wednesday = const Value.absent(),
    this.thursday = const Value.absent(),
    this.friday = const Value.absent(),
    this.saturday = const Value.absent(),
    this.sunday = const Value.absent(),
  }) : nextDate = Value(nextDate);
  static Insertable<Repeater> custom({
    Expression<int> id,
    Expression<int> pid,
    Expression<DateTime> nextDate,
    Expression<DateTime> start,
    Expression<DateTime> end,
    Expression<int> everyDays,
    Expression<bool> monday,
    Expression<bool> tuesday,
    Expression<bool> wednesday,
    Expression<bool> thursday,
    Expression<bool> friday,
    Expression<bool> saturday,
    Expression<bool> sunday,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pid != null) 'pid': pid,
      if (nextDate != null) 'next_date': nextDate,
      if (start != null) 'start': start,
      if (end != null) 'end': end,
      if (everyDays != null) 'every_days': everyDays,
      if (monday != null) 'monday': monday,
      if (tuesday != null) 'tuesday': tuesday,
      if (wednesday != null) 'wednesday': wednesday,
      if (thursday != null) 'thursday': thursday,
      if (friday != null) 'friday': friday,
      if (saturday != null) 'saturday': saturday,
      if (sunday != null) 'sunday': sunday,
    });
  }

  RepeatersCompanion copyWith(
      {Value<int> id,
      Value<int> pid,
      Value<DateTime> nextDate,
      Value<DateTime> start,
      Value<DateTime> end,
      Value<int> everyDays,
      Value<bool> monday,
      Value<bool> tuesday,
      Value<bool> wednesday,
      Value<bool> thursday,
      Value<bool> friday,
      Value<bool> saturday,
      Value<bool> sunday}) {
    return RepeatersCompanion(
      id: id ?? this.id,
      pid: pid ?? this.pid,
      nextDate: nextDate ?? this.nextDate,
      start: start ?? this.start,
      end: end ?? this.end,
      everyDays: everyDays ?? this.everyDays,
      monday: monday ?? this.monday,
      tuesday: tuesday ?? this.tuesday,
      wednesday: wednesday ?? this.wednesday,
      thursday: thursday ?? this.thursday,
      friday: friday ?? this.friday,
      saturday: saturday ?? this.saturday,
      sunday: sunday ?? this.sunday,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (pid.present) {
      map['pid'] = Variable<int>(pid.value);
    }
    if (nextDate.present) {
      map['next_date'] = Variable<DateTime>(nextDate.value);
    }
    if (start.present) {
      map['start'] = Variable<DateTime>(start.value);
    }
    if (end.present) {
      map['end'] = Variable<DateTime>(end.value);
    }
    if (everyDays.present) {
      map['every_days'] = Variable<int>(everyDays.value);
    }
    if (monday.present) {
      map['monday'] = Variable<bool>(monday.value);
    }
    if (tuesday.present) {
      map['tuesday'] = Variable<bool>(tuesday.value);
    }
    if (wednesday.present) {
      map['wednesday'] = Variable<bool>(wednesday.value);
    }
    if (thursday.present) {
      map['thursday'] = Variable<bool>(thursday.value);
    }
    if (friday.present) {
      map['friday'] = Variable<bool>(friday.value);
    }
    if (saturday.present) {
      map['saturday'] = Variable<bool>(saturday.value);
    }
    if (sunday.present) {
      map['sunday'] = Variable<bool>(sunday.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RepeatersCompanion(')
          ..write('id: $id, ')
          ..write('pid: $pid, ')
          ..write('nextDate: $nextDate, ')
          ..write('start: $start, ')
          ..write('end: $end, ')
          ..write('everyDays: $everyDays, ')
          ..write('monday: $monday, ')
          ..write('tuesday: $tuesday, ')
          ..write('wednesday: $wednesday, ')
          ..write('thursday: $thursday, ')
          ..write('friday: $friday, ')
          ..write('saturday: $saturday, ')
          ..write('sunday: $sunday')
          ..write(')'))
        .toString();
  }
}

class $RepeatersTable extends Repeaters
    with TableInfo<$RepeatersTable, Repeater> {
  final GeneratedDatabase _db;
  final String _alias;
  $RepeatersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _pidMeta = const VerificationMeta('pid');
  GeneratedIntColumn _pid;
  @override
  GeneratedIntColumn get pid => _pid ??= _constructPid();
  GeneratedIntColumn _constructPid() {
    return GeneratedIntColumn('pid', $tableName, true,
        $customConstraints: 'NULL REFERENCES tasks(id)');
  }

  final VerificationMeta _nextDateMeta = const VerificationMeta('nextDate');
  GeneratedDateTimeColumn _nextDate;
  @override
  GeneratedDateTimeColumn get nextDate => _nextDate ??= _constructNextDate();
  GeneratedDateTimeColumn _constructNextDate() {
    return GeneratedDateTimeColumn(
      'next_date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _startMeta = const VerificationMeta('start');
  GeneratedDateTimeColumn _start;
  @override
  GeneratedDateTimeColumn get start => _start ??= _constructStart();
  GeneratedDateTimeColumn _constructStart() {
    return GeneratedDateTimeColumn(
      'start',
      $tableName,
      true,
    );
  }

  final VerificationMeta _endMeta = const VerificationMeta('end');
  GeneratedDateTimeColumn _end;
  @override
  GeneratedDateTimeColumn get end => _end ??= _constructEnd();
  GeneratedDateTimeColumn _constructEnd() {
    return GeneratedDateTimeColumn(
      'end',
      $tableName,
      true,
    );
  }

  final VerificationMeta _everyDaysMeta = const VerificationMeta('everyDays');
  GeneratedIntColumn _everyDays;
  @override
  GeneratedIntColumn get everyDays => _everyDays ??= _constructEveryDays();
  GeneratedIntColumn _constructEveryDays() {
    return GeneratedIntColumn(
      'every_days',
      $tableName,
      true,
    );
  }

  final VerificationMeta _mondayMeta = const VerificationMeta('monday');
  GeneratedBoolColumn _monday;
  @override
  GeneratedBoolColumn get monday => _monday ??= _constructMonday();
  GeneratedBoolColumn _constructMonday() {
    return GeneratedBoolColumn('monday', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _tuesdayMeta = const VerificationMeta('tuesday');
  GeneratedBoolColumn _tuesday;
  @override
  GeneratedBoolColumn get tuesday => _tuesday ??= _constructTuesday();
  GeneratedBoolColumn _constructTuesday() {
    return GeneratedBoolColumn('tuesday', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _wednesdayMeta = const VerificationMeta('wednesday');
  GeneratedBoolColumn _wednesday;
  @override
  GeneratedBoolColumn get wednesday => _wednesday ??= _constructWednesday();
  GeneratedBoolColumn _constructWednesday() {
    return GeneratedBoolColumn('wednesday', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _thursdayMeta = const VerificationMeta('thursday');
  GeneratedBoolColumn _thursday;
  @override
  GeneratedBoolColumn get thursday => _thursday ??= _constructThursday();
  GeneratedBoolColumn _constructThursday() {
    return GeneratedBoolColumn('thursday', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _fridayMeta = const VerificationMeta('friday');
  GeneratedBoolColumn _friday;
  @override
  GeneratedBoolColumn get friday => _friday ??= _constructFriday();
  GeneratedBoolColumn _constructFriday() {
    return GeneratedBoolColumn('friday', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _saturdayMeta = const VerificationMeta('saturday');
  GeneratedBoolColumn _saturday;
  @override
  GeneratedBoolColumn get saturday => _saturday ??= _constructSaturday();
  GeneratedBoolColumn _constructSaturday() {
    return GeneratedBoolColumn('saturday', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _sundayMeta = const VerificationMeta('sunday');
  GeneratedBoolColumn _sunday;
  @override
  GeneratedBoolColumn get sunday => _sunday ??= _constructSunday();
  GeneratedBoolColumn _constructSunday() {
    return GeneratedBoolColumn('sunday', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        pid,
        nextDate,
        start,
        end,
        everyDays,
        monday,
        tuesday,
        wednesday,
        thursday,
        friday,
        saturday,
        sunday
      ];
  @override
  $RepeatersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'repeaters';
  @override
  final String actualTableName = 'repeaters';
  @override
  VerificationContext validateIntegrity(Insertable<Repeater> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('pid')) {
      context.handle(
          _pidMeta, pid.isAcceptableOrUnknown(data['pid'], _pidMeta));
    }
    if (data.containsKey('next_date')) {
      context.handle(_nextDateMeta,
          nextDate.isAcceptableOrUnknown(data['next_date'], _nextDateMeta));
    } else if (isInserting) {
      context.missing(_nextDateMeta);
    }
    if (data.containsKey('start')) {
      context.handle(
          _startMeta, start.isAcceptableOrUnknown(data['start'], _startMeta));
    }
    if (data.containsKey('end')) {
      context.handle(
          _endMeta, end.isAcceptableOrUnknown(data['end'], _endMeta));
    }
    if (data.containsKey('every_days')) {
      context.handle(_everyDaysMeta,
          everyDays.isAcceptableOrUnknown(data['every_days'], _everyDaysMeta));
    }
    if (data.containsKey('monday')) {
      context.handle(_mondayMeta,
          monday.isAcceptableOrUnknown(data['monday'], _mondayMeta));
    }
    if (data.containsKey('tuesday')) {
      context.handle(_tuesdayMeta,
          tuesday.isAcceptableOrUnknown(data['tuesday'], _tuesdayMeta));
    }
    if (data.containsKey('wednesday')) {
      context.handle(_wednesdayMeta,
          wednesday.isAcceptableOrUnknown(data['wednesday'], _wednesdayMeta));
    }
    if (data.containsKey('thursday')) {
      context.handle(_thursdayMeta,
          thursday.isAcceptableOrUnknown(data['thursday'], _thursdayMeta));
    }
    if (data.containsKey('friday')) {
      context.handle(_fridayMeta,
          friday.isAcceptableOrUnknown(data['friday'], _fridayMeta));
    }
    if (data.containsKey('saturday')) {
      context.handle(_saturdayMeta,
          saturday.isAcceptableOrUnknown(data['saturday'], _saturdayMeta));
    }
    if (data.containsKey('sunday')) {
      context.handle(_sundayMeta,
          sunday.isAcceptableOrUnknown(data['sunday'], _sundayMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Repeater map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Repeater.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $RepeatersTable createAlias(String alias) {
    return $RepeatersTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $NotesTable _notes;
  $NotesTable get notes => _notes ??= $NotesTable(this);
  $TasksTable _tasks;
  $TasksTable get tasks => _tasks ??= $TasksTable(this);
  $SchedulesTable _schedules;
  $SchedulesTable get schedules => _schedules ??= $SchedulesTable(this);
  $TagsTable _tags;
  $TagsTable get tags => _tags ??= $TagsTable(this);
  $ContentsTable _contents;
  $ContentsTable get contents => _contents ??= $ContentsTable(this);
  $ContentItemsTable _contentItems;
  $ContentItemsTable get contentItems =>
      _contentItems ??= $ContentItemsTable(this);
  $DaylyStatsTable _daylyStats;
  $DaylyStatsTable get daylyStats => _daylyStats ??= $DaylyStatsTable(this);
  $RepeatersTable _repeaters;
  $RepeatersTable get repeaters => _repeaters ??= $RepeatersTable(this);
  NotesDao _notesDao;
  NotesDao get notesDao => _notesDao ??= NotesDao(this as AppDatabase);
  TasksDao _tasksDao;
  TasksDao get tasksDao => _tasksDao ??= TasksDao(this as AppDatabase);
  SchedulesDao _schedulesDao;
  SchedulesDao get schedulesDao =>
      _schedulesDao ??= SchedulesDao(this as AppDatabase);
  TagsDao _tagsDao;
  TagsDao get tagsDao => _tagsDao ??= TagsDao(this as AppDatabase);
  ContentsDao _contentsDao;
  ContentsDao get contentsDao =>
      _contentsDao ??= ContentsDao(this as AppDatabase);
  StatsDao _statsDao;
  StatsDao get statsDao => _statsDao ??= StatsDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        notes,
        tasks,
        schedules,
        tags,
        contents,
        contentItems,
        daylyStats,
        repeaters
      ];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$NotesDaoMixin on DatabaseAccessor<AppDatabase> {
  $NotesTable get notes => attachedDatabase.notes;
  $TagsTable get tags => attachedDatabase.tags;
  $ContentsTable get contents => attachedDatabase.contents;
  $ContentItemsTable get contentItems => attachedDatabase.contentItems;
}
mixin _$TagsDaoMixin on DatabaseAccessor<AppDatabase> {
  $TagsTable get tags => attachedDatabase.tags;
}
mixin _$TasksDaoMixin on DatabaseAccessor<AppDatabase> {
  $TasksTable get tasks => attachedDatabase.tasks;
  $TagsTable get tags => attachedDatabase.tags;
  $RepeatersTable get repeaters => attachedDatabase.repeaters;
  $ContentsTable get contents => attachedDatabase.contents;
  $ContentItemsTable get contentItems => attachedDatabase.contentItems;
  $SchedulesTable get schedules => attachedDatabase.schedules;
}
mixin _$SchedulesDaoMixin on DatabaseAccessor<AppDatabase> {
  $SchedulesTable get schedules => attachedDatabase.schedules;
  $TasksTable get tasks => attachedDatabase.tasks;
}
mixin _$ContentsDaoMixin on DatabaseAccessor<AppDatabase> {
  $ContentsTable get contents => attachedDatabase.contents;
  $ContentItemsTable get contentItems => attachedDatabase.contentItems;
}
mixin _$StatsDaoMixin on DatabaseAccessor<AppDatabase> {
  $DaylyStatsTable get daylyStats => attachedDatabase.daylyStats;
}
