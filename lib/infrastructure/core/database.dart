import 'dart:convert';
import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:rxdart/rxdart.dart';


part 'database.g.dart';
part 'moor_converters.dart';

// Tables
part '../contents/content.dart';
part '../notes/note.dart';
part '../schedule/schedule.dart';
part '../tags/tag.dart';
part '../tasks/task.dart';
part '../stats/stats.dart';

// DAO's
part '../notes/notes_dao.dart';
part '../tags/tags_dao.dart';
part '../tasks/tasks_dao.dart';
part '../schedule/schedules_dao.dart';
part '../contents/contents_dao.dart';
part '../stats/stats_dao.dart';

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    moorRuntimeOptions.dontWarnAboutMultipleDatabases = true;
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(
  tables: [
    Notes,
    Tasks,
    Schedules,
    Tags,
    Contents,
    ContentItems,
    DaylyStats,
    Repeaters
  ],
  daos: [
    NotesDao,
    TasksDao,
    SchedulesDao,
    TagsDao,
    ContentsDao,
    StatsDao
  ]
)
class AppDatabase extends _$AppDatabase {
  AppDatabase(): super(_openConnection());

  @override
  int get schemaVersion => 1;
}