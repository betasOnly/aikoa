import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/notifications/notification.dart';
import 'package:flutter/material.dart' hide Notification;

class ReceivedNotification {
  final int id;
  final String title;
  final String body;
  final String payload;
  ReceivedNotification({
    @required this.id,
    @required this.title,
    @required this.body,
    @required this.payload,
  });

  factory ReceivedNotification.fromDomain(Notification notification) {
    return ReceivedNotification(
      id: int.parse(notification.id.getOrCrash()),
      title: notification.title,
      body: notification.body,
      payload: notification.payload
    );
  }

  Notification toDomain() {
    return Notification(
      id: UniqueId.fromUniqueInteger(id),
      title: title,
      body: body,
      payload: payload
    );
  }
}
