part of '../core/database.dart';

class NoteWithDetails extends Note {
  final Tag tag;

  NoteWithDetails({@required Note note, this.tag}): super(
    id: note.id, title: note.title, category: note.category, child: note.child,
  );
}

class Notes extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().nullable()();
  TextColumn get category => 
    text().nullable().customConstraint('NULL REFERENCES tags(name)')();
  IntColumn get child => 
    integer().nullable().customConstraint('NULL REFERENCES contents(id)')();
}