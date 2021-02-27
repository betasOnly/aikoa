import 'package:dartz/dartz.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

import 'package:Dayly/domain/notifications/i_notifications_repository.dart';
import 'package:Dayly/domain/notifications/notification.dart';
import 'package:Dayly/domain/notifications/notifications_failure.dart';

@LazySingleton(as: INotificationsRepository)
class NotificationsRepository implements INotificationsRepository {
  final FlutterLocalNotificationsPlugin _notificationsPlugin;

  NotificationsRepository(this._notificationsPlugin);

  Future<Either<NotificationsFailure, Unit>>
    show(Notification notification) async {
      try {
        var androidChannelSpecifics = AndroidNotificationDetails(
          'CHANNEL_ID',
          'CHANNEL_NAME',
          "CHANNEL_DESCRIPTION",
          importance: Importance.max,
          priority: Priority.max,
          visibility: NotificationVisibility.public,
        );
        var iosChannelSpecifics = IOSNotificationDetails();
        var platformChannelSpecifics =
          NotificationDetails(
            android: androidChannelSpecifics,
            iOS: iosChannelSpecifics);
        await _notificationsPlugin.show(
          0,
          notification.title,
          notification.body,
          platformChannelSpecifics,
          payload: notification.payload,
        );
        return right(unit);
      } catch(e) {
        return left(NotificationsFailure.unexpected());
      }
      
    }
  
  Future<Either<NotificationsFailure, Unit>> 
    schedule(Notification notification, DateTime date) {
      
    }

  Future<Either<NotificationsFailure, Unit>> cancelLast() {

  }
  Future<Either<NotificationsFailure, Unit>> cancelAll() {

  }

}