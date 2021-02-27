import 'dart:collection';

import 'package:Dayly/domain/tags/tag.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:Dayly/domain/tags/i_tag_repository.dart';
import 'package:Dayly/domain/tags/tag_failure.dart';
import 'package:Dayly/infrastructure/core/database.dart' hide Tag;
import 'package:moor/moor.dart';

import './tag_mapper.dart';

@LazySingleton(as: ITagRepository)
class TagRepository implements ITagRepository {
  final AppDatabase _database;

  TagRepository(this._database);

  @override
  Stream<Either<TagFailure, UnmodifiableListView<Tag>>>
      watchAll() async* {
    yield* _database.tagsDao.watchAll().map(
      (snapshot) {
        return right(UnmodifiableListView<Tag>(
          snapshot.map((tag) => tag.toDomain())
        ));
      }
    );
  }

  @override
  Future<Either<TagFailure, Unit>> create(Tag tag) async {
    try {
      await _database.tagsDao.insert(TagsCompanion.insert(
        name: tag.name.getOrCrash()
      ));
      return right(unit);
    } catch (e) {
      print(e);
      return left(const TagFailure.unableToUpdate());
    }
  }

  @override
  Future<Either<TagFailure, Unit>> update(Tag tag) async {
    try {
      await _database.tagsDao.updateTag(fromDomain(tag));
      return right(unit);
    } catch (e) {
      print(e);
      return left(const TagFailure.unableToUpdate());
    }
  }

  @override
  Future<Either<TagFailure, Unit>> delete(Tag tag) async {
    try {
      await _database.tagsDao.remove(fromDomain(tag));
      return right(unit);
    } catch (e) {
      print(e);
      return left(const TagFailure.unableToUpdate());
    }
  }

  TagsCompanion fromDomain(Tag tag) {
    return TagsCompanion(
      icon: Value.absent(),
      name: Value(tag.name.getOrCrash())
    );
  }
}