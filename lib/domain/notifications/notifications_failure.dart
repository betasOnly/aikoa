import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_failure.freezed.dart';

@freezed
abstract class NotificationsFailure with _$NotificationsFailure {
  const factory NotificationsFailure.unexpected() = Unexpected;
}