part of '../core/database.dart';

class Contents extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get childs => text().map(const ChildIdsConverter()).nullable()();
}

class ContentItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get pid =>
      integer().nullable().customConstraint('NULL REFERENCES contents(id)')();
  TextColumn get value => text().nullable()();
  TextColumn get type => text().nullable()();
  TextColumn get details => text().nullable()();
}
