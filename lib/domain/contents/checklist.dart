import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:Dayly/domain/core/entity.dart';
import 'package:Dayly/domain/core/value_objects.dart';

part 'checklist.freezed.dart';

@freezed
abstract class ChecklistItem with _$ChecklistItem implements IEntity {
  const factory ChecklistItem({
    @required UniqueId id,
    @required String title,
    @required bool done,
  }) = _ChecklistItem;

  factory ChecklistItem.empty() => ChecklistItem(
        id: UniqueId(),
        title: '',
        done: false,
      );
}