
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:Dayly/domain/core/entity.dart';
import 'package:Dayly/domain/core/value_objects.dart';

part 'notification.freezed.dart';

@freezed
abstract class Notification with _$Notification implements IEntity {
  const factory Notification({
    @required UniqueId id,
    @required String title,
    String body,
    String payload,
  }) = _Notification;

  factory Notification.simple(String title) {
    return Notification(id: UniqueId(), title: title);
  }
}
