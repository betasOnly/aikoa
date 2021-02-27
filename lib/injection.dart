import 'package:device_calendar/device_calendar.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:Dayly/infrastructure/core/database.dart';

import 'injection.config.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  DeviceCalendarPlugin get calendarPlugin => DeviceCalendarPlugin();

  @lazySingleton
  AppDatabase get database => AppDatabase();

  @lazySingleton
  FlutterLocalNotificationsPlugin get notificationsPlugin {
    var initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: IOSInitializationSettings(
        onDidReceiveLocalNotification: (id, title, body, payload) {
          return;
        }
      )
    );
    final plugin = FlutterLocalNotificationsPlugin();
    plugin.initialize(
      initializationSettings,
      onSelectNotification: (String payload) async {}
    );
    return plugin;
  }
}

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}

abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
  static const fake = 'fake';
}