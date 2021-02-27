part of '../core/database.dart';

class Tags extends Table {
  TextColumn get name => text()();
  TextColumn get icon => text().nullable()();

  @override
  Set<Column> get primaryKey => {name};
}