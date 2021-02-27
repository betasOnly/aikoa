import 'dart:collection';

import 'package:dartz/dartz.dart' hide id;
import 'package:injectable/injectable.dart';
import 'package:moor/moor.dart';

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/notes/i_note_repository.dart';
import 'package:Dayly/domain/notes/note_failure.dart';
import 'package:Dayly/domain/notes/note.dart';
import 'package:Dayly/infrastructure/core/database.dart' hide Note;

import './note_mapper.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  final AppDatabase _database;

  NoteRepository(this._database);

  @override
  Stream<Either<NoteFailure, UnmodifiableListView<Note>>>
      watchAll() async* {
    yield* _database.notesDao.watchAll().map(
      (snapshot) {
        return right(UnmodifiableListView<Note>(
          snapshot.map((note) => note.toDomain())
        ));
      }
    );
  }

  @override
  Future<Either<NoteFailure, Note>> getNote(UniqueId id) async {
    try {
      final note = (
        await _database.notesDao.getNote(int.parse(id.getOrCrash()))).toDomain();
      return right(note);
    } catch (e) {
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> create(Note note) async {
    try {
      await _database.notesDao.insert(
        fromDomain(note).copyWith(id: Value.absent()));
      return right(unit);
    } catch (e) {
      print(e);
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) async {
    try {
      await _database.notesDao.updateNote(fromDomain(note));
      return right(unit);
    } catch (e) {
      print(e);
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) async {
    try {
      await _database.notesDao.remove(fromDomain(note));
      return right(unit);
    } catch (e) {
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> archive(Note note) async {
    try {
      await _database.notesDao.archive(fromDomain(note));
      return right(unit);
    } catch (e) {
      return left(const NoteFailure.unexpected());
    }
  }

  NotesCompanion fromDomain(Note note) {
    return NotesCompanion.insert(
      id: Value(note.id.toInt()),
      title: Value(note.title.getOrCrash()),
      category: note.tag.fold(
        () => Value.absent(),
        (tag) => Value(tag.name.getOrCrash())),
      child: note.child.fold(
        () => Value.absent(),
        (cid) => Value(cid.toInt())
      )
    );
  }
}
