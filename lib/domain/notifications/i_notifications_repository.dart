import 'package:dartz/dartz.dart';

import 'notification.dart';
import 'notifications_failure.dart';


abstract class INotificationsRepository {
  Future<Either<NotificationsFailure, Unit>> show(Notification notification);
  Future<Either<NotificationsFailure, Unit>> 
      schedule(Notification notification, DateTime date);
  Future<Either<NotificationsFailure, Unit>> cancelLast();
  Future<Either<NotificationsFailure, Unit>> cancelAll();
}
