part of '../core/database.dart';

@UseDao(tables: [Notes, Tags, Contents, ContentItems])
class NotesDao extends DatabaseAccessor<AppDatabase> with _$NotesDaoMixin {
  NotesDao(AppDatabase db): super(db);

  Stream<List<NoteWithDetails>> watchAll() {
    return (select(notes)
      ..orderBy([(t) => OrderingTerm(expression: t.id, mode: OrderingMode.desc)])
      ).join([
        leftOuterJoin(tags, tags.name.equalsExp(notes.category)),
      ])
      .watch()
      .map(
        (rows) => rows.map(
          (row) {
            return NoteWithDetails(
              note: row.readTable(notes),
              tag: row.readTable(tags),
            );
          }
        ).toList()
      );
  }

  Future<NoteWithDetails> getNote(int id) async {
    final note = await (select(notes)
      ..where((t) => t.id.equals(id))
    ).getSingle();
    final tag = await (select(tags)
      ..where((t) => t.name.equals(note.category))
    ).getSingle();

    return NoteWithDetails(note: note, tag: tag);
  }

  Future<bool> updateNote(Insertable<Note> note) {
    return update(notes).replace(note);
  }

  Future<int> insert(Insertable<Note> note) {
    return into(notes).insert(note);
  }

  Future remove(NotesCompanion note) async {
    await customUpdate(
      'DELETE FROM contents WHERE id = ${note.child.value}',
      variables: [],
      updates: {contents},
      updateKind: UpdateKind.delete
    );
    await customUpdate(
      'DELETE FROM content_items WHERE pid = ${note.child.value}',
      variables: [],
      updates: {contentItems},
      updateKind: UpdateKind.delete
    );
    return delete(notes).delete(note);
  }

  Future archive(NotesCompanionnote) {
  }
}