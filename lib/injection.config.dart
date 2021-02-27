// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:device_calendar/device_calendar.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'infrastructure/core/database.dart';
import 'app/core/bloc/calendar/calendar_manager/calendar_manager_cubit.dart';
import 'infrastructure/calendar/calendar_repository.dart';
import 'infrastructure/contents/content_repository.dart';
import 'app/core/bloc/calendar/event_actor/event_actor_bloc.dart';
import 'app/pages/calendar/event_page/event_form/event_form_bloc.dart';
import 'app/core/bloc/calendar/event_watcher/event_watcher_cubit.dart';
import 'infrastructure/calendar/fake_calendar_repository.dart';
import 'infrastructure/tasks/fake_task_repository.dart';
import 'app/core/bloc/schedule/focus/focus_bloc.dart';
import 'domain/calendar/i_calendar_repository.dart';
import 'domain/contents/i_content_repository.dart';
import 'domain/notes/i_note_repository.dart';
import 'domain/notifications/i_notifications_repository.dart';
import 'domain/schedule/i_schedule_repository.dart';
import 'domain/stats/i_stats_repository.dart';
import 'domain/tags/i_tag_repository.dart';
import 'domain/tasks/i_task_repository.dart';
import 'app/core/bloc/notes/note_actor/note_actor_bloc.dart';
import 'app/pages/note/note_form/note_form_bloc.dart';
import 'infrastructure/notes/note_repository.dart';
import 'app/core/bloc/notes/note_watcher/note_watcher_cubit.dart';
import 'infrastructure/notifications/notifications_repository.dart';
import 'app/pages/focus/components/pomodoro_timer/bloc/pomodoro_bloc.dart';
import 'injection.dart';
import 'app/core/bloc/schedule/schedule_planner/schedule_planner_bloc.dart';
import 'infrastructure/schedule/fake_schedule_repository.dart';
import 'infrastructure/schedule/schedule_repository.dart' as Dayly;
import 'app/core/bloc/schedule/schedule_watcher/schedule_watcher_cubit.dart';
import 'app/core/components/smart_editor/cubit/smart_editor_cubit.dart';
import 'infrastructure/stats/stats_repository.dart';
import 'app/core/bloc/stats/stats_today/stats_today_cubit.dart';
import 'app/pages/tags/tag_picker/tag_form/tag_form_bloc.dart';
import 'infrastructure/tags/tag_repository.dart';
import 'app/core/bloc/tags/cubit/tags_watcher_cubit.dart';
import 'app/core/bloc/tasks/task_actor/task_actor_bloc.dart';
import 'app/pages/task/task_form/task_form_bloc.dart';
import 'infrastructure/tasks/task_repository.dart';
import 'app/core/bloc/tasks/task_watcher/task_watcher_cubit.dart';

/// Environment names
const _fake = 'fake';
const _prod = 'prod';
const _dev = 'dev';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<AppDatabase>(() => registerModule.database);
  gh.lazySingleton<DeviceCalendarPlugin>(() => registerModule.calendarPlugin);
  gh.lazySingleton<FlutterLocalNotificationsPlugin>(
      () => registerModule.notificationsPlugin);
  gh.lazySingleton<ICalendarRepository>(() => FakeCalendarRepository(),
      registerFor: {_fake});
  gh.lazySingleton<IContentRepository>(
      () => ContentRepository(get<AppDatabase>()));
  gh.lazySingleton<INoteRepository>(() => NoteRepository(get<AppDatabase>()));
  gh.lazySingleton<INotificationsRepository>(
      () => NotificationsRepository(get<FlutterLocalNotificationsPlugin>()));
  gh.lazySingleton<IScheduleRepository>(
      () => ScheduleRepository(get<AppDatabase>()),
      registerFor: {_fake});
  gh.lazySingleton<IScheduleRepository>(
      () => Dayly.ScheduleRepository(get<AppDatabase>()),
      registerFor: {_prod, _dev});
  gh.lazySingleton<IStatsRepository>(() => StatsRepository(get<AppDatabase>()));
  gh.lazySingleton<ITagRepository>(() => TagRepository(get<AppDatabase>()));
  gh.lazySingleton<ITaskRepository>(() => TaskRepository(get<AppDatabase>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<ITaskRepository>(() => FakeTaskRepository(),
      registerFor: {_fake});
  gh.factory<NoteActorBloc>(() => NoteActorBloc(get<INoteRepository>()));
  gh.factory<NoteFormBloc>(
      () => NoteFormBloc(get<INoteRepository>(), get<IContentRepository>()));
  gh.factory<NoteWatcherCubit>(() => NoteWatcherCubit(get<INoteRepository>()));
  gh.factory<SchedulePlannerBloc>(
      () => SchedulePlannerBloc(get<IScheduleRepository>()));
  gh.factory<ScheduleWatcherCubit>(() => ScheduleWatcherCubit(
      get<IScheduleRepository>(), get<ICalendarRepository>()));
  final sharedPreferences = await registerModule.prefs;
  gh.factory<SharedPreferences>(() => sharedPreferences);
  gh.factory<SmartEditorCubit>(
      () => SmartEditorCubit(get<IContentRepository>()));
  gh.factory<StatsTodayCubit>(() => StatsTodayCubit(get<IStatsRepository>()));
  gh.factory<TagFormBloc>(() => TagFormBloc(get<ITagRepository>()));
  gh.factory<TagsWatcherCubit>(() => TagsWatcherCubit(get<ITagRepository>()));
  gh.factory<TaskActorBloc>(() => TaskActorBloc(get<ITaskRepository>()));
  gh.factory<TaskFormBloc>(
      () => TaskFormBloc(get<ITaskRepository>(), get<IContentRepository>()));
  gh.factory<TaskWatcherCubit>(() => TaskWatcherCubit(get<ITaskRepository>()));
  gh.factory<CalendarManagerCubit>(
      () => CalendarManagerCubit(get<ICalendarRepository>()));
  gh.factory<EventActorBloc>(() => EventActorBloc(get<ICalendarRepository>()));
  gh.factory<EventFormBloc>(() => EventFormBloc(get<ICalendarRepository>()));
  gh.factory<EventWatcherCubit>(
      () => EventWatcherCubit(get<ICalendarRepository>()));
  gh.factory<FocusBloc>(
      () => FocusBloc(get<IScheduleRepository>(), get<ICalendarRepository>()));
  gh.lazySingleton<ICalendarRepository>(
      () => CalendarRepository(
          get<SharedPreferences>(), get<DeviceCalendarPlugin>()),
      registerFor: {_dev, _prod});
  gh.factory<PomodoroBloc>(() =>
      PomodoroBloc(get<SharedPreferences>(), get<INotificationsRepository>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
