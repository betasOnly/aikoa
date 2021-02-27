import 'dart:collection';

import 'package:Dayly/domain/contents/content.dart';
import 'package:Dayly/domain/contents/content_failure.dart';
import 'package:Dayly/domain/contents/i_content_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:moor/moor.dart';

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/infrastructure/core/database.dart' hide Content, ContentItem;

import './content_mapper.dart';

@LazySingleton(as: IContentRepository)
class ContentRepository implements IContentRepository {
  final AppDatabase _database;

  ContentRepository(this._database);

  Stream<Either<ContentFailure, UnmodifiableListView<ContentItem>>>
    watch(UniqueId id) async* {
        yield* _database.contentsDao.watchContent(id.toInt()).map(
          (snapshot) {
            return right(UnmodifiableListView<ContentItem>(
              snapshot.map((item) => item.toDomain())
            ));
          }
        );
      }

  Future<Either<ContentFailure, UnmodifiableListView<ContentItem>>>
    items(UniqueId id) async {
      try {
        final items = await _database.contentsDao.getItems(id.toInt());
        return right(UnmodifiableListView<ContentItem>(
          items.map((item) => item.toDomain())
        ));
      } catch (e) {
        print(e);
        return left(const ContentFailure.unexpected());
      }
    }

  Future<Either<ContentFailure, UniqueId>> create() async {
    try {
      final uid = await _database.contentsDao.create();
      return right(UniqueId.fromUniqueInteger(uid));
    } catch (e) {
      print(e);
      return left(const ContentFailure.unexpected());
    }
  }

  Future<Either<ContentFailure, UniqueId>> insert(int index, ContentItem item)
    async {
      try {
        final uid = await _database.contentsDao.insert(
          index,
          fromDomain(item).copyWith(id: Value.absent())
        );
        return right(UniqueId.fromUniqueInteger(uid));
      } catch (e) {
        print(e);
        return left(const ContentFailure.unexpected());
      }
    }
  
  Future<Either<ContentFailure, Unit>> update(ContentItem item) async {
    try {
      await _database.contentsDao.updateContent(fromDomain(item));
      return right(unit);
    } catch (e) {
      print(e);
      return left(const ContentFailure.unexpected());
    }
  }

  Future<Either<ContentFailure, Unit>> delete(ContentItem item) async {
    try {
      await _database.contentsDao.remove(fromDomain(item));
      return right(unit);
    } catch (e) {
      print(e);
      return left(const ContentFailure.unexpected());
    }
  }

   ContentItemsCompanion fromDomain(ContentItem item) {
    return ContentItemsCompanion(
      id: Value(item.id.toInt()),
      pid: Value(item.pid.toInt()),
      value: Value(item.body),
      type: Value(item.type),
      details: Value.absent()
    );
  }
}