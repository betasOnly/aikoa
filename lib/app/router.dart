import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:theme_provider/theme_provider.dart';

import './pages/pages.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      page: HomePage,
      transitionsBuilder: homePageTransition),
    CustomRoute(
      page: TaskPage,
      maintainState: false,
      transitionsBuilder: surfaceTransition
    ),
    CustomRoute(
      page: NotePage,
      maintainState: false,
      transitionsBuilder: surfaceTransition
    ),
    CustomRoute(
      page: SchedulingPage,
      maintainState: false,
      transitionsBuilder: defaultTransition
    ),
    CustomRoute(
      page: SelectTasksDialog,
      maintainState: false,
      transitionsBuilder: defaultTransition
    ),
    CustomRoute(
      page: CalendarPage,
      transitionsBuilder: defaultTransition
    ),
    CustomRoute(
      page: EventPage,
      maintainState: false,
      transitionsBuilder: surfaceTransition
    ),
    CustomRoute(
      page: FocusPage,
      maintainState: false,
      transitionsBuilder: defaultTransition
    ),
    CustomRoute(
      page: TagsPage,
      maintainState: false,
      transitionsBuilder: defaultTransition
    ),
    CustomRoute(
      page: OnboardingPage,
      maintainState: false,
      transitionsBuilder: defaultTransition
    ),
  ],
)
class $Router {}

Widget homePageTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  final themeData = ThemeProvider.themeOf(context).data;
  FlutterStatusbarcolor.setStatusBarColor(themeData.scaffoldBackgroundColor);
  if (themeData.brightness == Brightness.light) {
    FlutterStatusbarcolor.setNavigationBarWhiteForeground(false);
  } else {
    FlutterStatusbarcolor.setNavigationBarWhiteForeground(true);
  }
  return FadeTransition(opacity: animation, child: child);
}

Widget defaultTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  final themeData = ThemeProvider.themeOf(context).data;
  FlutterStatusbarcolor.setStatusBarColor(themeData.scaffoldBackgroundColor);
  if (themeData.brightness == Brightness.light) {
    FlutterStatusbarcolor.setNavigationBarWhiteForeground(false);
  } else {
    FlutterStatusbarcolor.setNavigationBarWhiteForeground(true);
  }
  return FadeTransition(opacity: animation, child: child);
}

Widget surfaceTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  final themeData = ThemeProvider.themeOf(context).data;
  FlutterStatusbarcolor.setStatusBarColor(themeData.colorScheme.surface);
  if (themeData.brightness == Brightness.light) {
    FlutterStatusbarcolor.setNavigationBarWhiteForeground(false);
  } else {
    FlutterStatusbarcolor.setNavigationBarWhiteForeground(true);
  }
  return FadeTransition(opacity: animation, child: child);
}
