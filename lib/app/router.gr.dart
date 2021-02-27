// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter/material.dart';

import '../domain/calendar/calendar.dart';
import '../domain/notes/note.dart';
import '../domain/tasks/task.dart';
import 'pages/pages.dart';
import 'router.dart';

class Routes {
  static const String homePage = '/home-page';
  static const String taskPage = '/task-page';
  static const String notePage = '/note-page';
  static const String schedulingPage = '/scheduling-page';
  static const String selectTasksDialog = '/select-tasks-dialog';
  static const String calendarPage = '/calendar-page';
  static const String eventPage = '/event-page';
  static const String focusPage = '/focus-page';
  static const String tagsPage = '/tags-page';
  static const String onboardingPage = '/onboarding-page';
  static const all = <String>{
    homePage,
    taskPage,
    notePage,
    schedulingPage,
    selectTasksDialog,
    calendarPage,
    eventPage,
    focusPage,
    tagsPage,
    onboardingPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.taskPage, page: TaskPage),
    RouteDef(Routes.notePage, page: NotePage),
    RouteDef(Routes.schedulingPage, page: SchedulingPage),
    RouteDef(Routes.selectTasksDialog, page: SelectTasksDialog),
    RouteDef(Routes.calendarPage, page: CalendarPage),
    RouteDef(Routes.eventPage, page: EventPage),
    RouteDef(Routes.focusPage, page: FocusPage),
    RouteDef(Routes.tagsPage, page: TagsPage),
    RouteDef(Routes.onboardingPage, page: OnboardingPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const HomePage().wrappedRoute(context),
        settings: data,
        transitionsBuilder: homePageTransition,
      );
    },
    TaskPage: (data) {
      final args = data.getArgs<TaskPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => TaskPage(
          key: args.key,
          task: args.task,
        ),
        settings: data,
        transitionsBuilder: surfaceTransition,
        maintainState: false,
      );
    },
    NotePage: (data) {
      final args = data.getArgs<NotePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => NotePage(
          key: args.key,
          note: args.note,
        ),
        settings: data,
        transitionsBuilder: surfaceTransition,
        maintainState: false,
      );
    },
    SchedulingPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const SchedulingPage(),
        settings: data,
        transitionsBuilder: defaultTransition,
        maintainState: false,
      );
    },
    SelectTasksDialog: (data) {
      final args = data.getArgs<SelectTasksDialogArguments>(
        orElse: () => SelectTasksDialogArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SelectTasksDialog(
          key: args.key,
          hideTasks: args.hideTasks,
        ),
        settings: data,
        transitionsBuilder: defaultTransition,
        maintainState: false,
      );
    },
    CalendarPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const CalendarPage().wrappedRoute(context),
        settings: data,
        transitionsBuilder: defaultTransition,
      );
    },
    EventPage: (data) {
      final args = data.getArgs<EventPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => EventPage(
          key: args.key,
          event: args.event,
        ),
        settings: data,
        transitionsBuilder: surfaceTransition,
        maintainState: false,
      );
    },
    FocusPage: (data) {
      final args = data.getArgs<FocusPageArguments>(
        orElse: () => FocusPageArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => FocusPage(
          key: args.key,
          eventOrTask: args.eventOrTask,
        ).wrappedRoute(context),
        settings: data,
        transitionsBuilder: defaultTransition,
        maintainState: false,
      );
    },
    TagsPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const TagsPage().wrappedRoute(context),
        settings: data,
        transitionsBuilder: defaultTransition,
        maintainState: false,
      );
    },
    OnboardingPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const OnboardingPage(),
        settings: data,
        transitionsBuilder: defaultTransition,
        maintainState: false,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// TaskPage arguments holder class
class TaskPageArguments {
  final Key key;
  final Task task;
  TaskPageArguments({this.key, @required this.task});
}

/// NotePage arguments holder class
class NotePageArguments {
  final Key key;
  final Note note;
  NotePageArguments({this.key, @required this.note});
}

/// SelectTasksDialog arguments holder class
class SelectTasksDialogArguments {
  final Key key;
  final List<Task> hideTasks;
  SelectTasksDialogArguments({this.key, this.hideTasks});
}

/// EventPage arguments holder class
class EventPageArguments {
  final Key key;
  final Event event;
  EventPageArguments({this.key, @required this.event});
}

/// FocusPage arguments holder class
class FocusPageArguments {
  final Key key;
  final Either<Event, Task> eventOrTask;
  FocusPageArguments({this.key, this.eventOrTask});
}
