import 'dart:collection';

import 'package:dartz/dartz.dart';

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/notes/note.dart';
import 'package:Dayly/domain/notes/note_failure.dart';

abstract class INoteRepository {
  Stream<Either<NoteFailure, UnmodifiableListView<Note>>> watchAll();
  Future<Either<NoteFailure, Note>> getNote(UniqueId id);
  Future<Either<NoteFailure, Unit>> create(Note note);
  Future<Either<NoteFailure, Unit>> update(Note note);
  Future<Either<NoteFailure, Unit>> delete(Note note);
  Future<Either<NoteFailure, Unit>> archive(Note note);
}