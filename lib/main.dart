import 'package:Dayly/app/core/bloc/onboarding/onboarding_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_provider/theme_provider.dart';

import 'package:Dayly/app/core/bloc/calendar/calendar_manager/calendar_manager_cubit.dart';
import 'package:Dayly/app/core/bloc/schedule/schedule_planner/schedule_planner_bloc.dart';
import 'package:Dayly/app/core/bloc/schedule/schedule_watcher/schedule_watcher_cubit.dart';
import 'package:Dayly/app/core/bloc/schedule/focus/focus_bloc.dart';
import 'package:Dayly/app/core/bloc/tasks/task_watcher/task_watcher_cubit.dart';
import 'package:Dayly/app/core/bloc/stats/stats_today/stats_today_cubit.dart';

import 'app/router.gr.dart';
import 'global.dart';
import 'injection.dart';

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Env.dev);
  SystemChrome.setEnabledSystemUIOverlays(
    [SystemUiOverlay.top, SystemUiOverlay.bottom])
    .then((_) async {
      final prefs = await SharedPreferences.getInstance();
      bool _done = (prefs.getBool('onboardingDone') ?? false);
      runApp(MyApp(onboarding: !_done,));
    });
}

// Removes the effect on srolls at the edge
class NoGlowEffect extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context, Widget child, AxisDirection axisDirection) {
      return child;
  }
}

class MyApp extends StatelessWidget {
  final bool onboarding;
  MyApp({this.onboarding=false});

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      saveThemesOnChange: true,
      loadThemeOnInit: true,
      defaultThemeId: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
        .platformBrightness == Brightness.light
          ? 'light'
          : 'dark',
      themes: [
        AppTheme(
          id: 'light',
          description: 'Light Theme',
          data: Themes.lightTheme),
        AppTheme(
          id: 'dark',
          description: 'Dark Theme',
          data: Themes.darkTheme),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => OnboardingBloc()
              ..add(onboarding
              ? OnboardingEvent.initialized()
              : OnboardingEvent.omboardingFinished()
            )
          ),
          BlocProvider(
            create: (context) => getIt<StatsTodayCubit>()..initialize(),
          ),
          BlocProvider<FocusBloc>(
            create: (context) => getIt<FocusBloc>()
              ..add(const FocusEvent.initialized()),
          ),
          BlocProvider(
            create: (context) => getIt<TaskWatcherCubit>()..watchAll(),
          ),
          BlocProvider<ScheduleWatcherCubit>(
            create: (context) => getIt<ScheduleWatcherCubit>()
              ..watchUncompleted(),
          ),
          BlocProvider(
            create: (context) => getIt<SchedulePlannerBloc>(),
          ),
          BlocProvider<CalendarManagerCubit>(
            create: (context) => getIt<CalendarManagerCubit>()
              ..listCalendars()
              ..connect()
          ),
        ],
        child: ThemeConsumer(
          child: Builder(
            builder: (themeContext) {
              final themeData = ThemeProvider.themeOf(themeContext).data;
              SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                statusBarColor: themeData.scaffoldBackgroundColor,
                statusBarBrightness: themeData.brightness,
                statusBarIconBrightness: themeData.brightness == Brightness.light
                  ? Brightness.dark
                  : Brightness.light
              ));
              return MaterialApp(
                theme: themeData,
                debugShowCheckedModeBanner: false,
                supportedLocales: AppLocalizations.supportedLocales,
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                builder: ExtendedNavigator.builder(
                  router: Router(),
                  initialRoute: onboarding
                    ? Routes.onboardingPage
                    : Routes.homePage,
                  builder: (context, child) => ScrollConfiguration(
                    behavior: NoGlowEffect(),
                    child: child,
                  ),
                )
              );
            }
          )
        ),
      )
    );
  }
}