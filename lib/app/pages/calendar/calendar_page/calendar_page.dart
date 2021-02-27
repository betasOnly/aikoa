import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/injection.dart';
import 'package:Dayly/app/router.gr.dart';
import 'package:Dayly/app/core/bloc/calendar/event_actor/event_actor_bloc.dart';
import 'package:Dayly/app/core/bloc/calendar/event_watcher/event_watcher_cubit.dart';
import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/domain/core/extensions.dart';

import 'components/events_overview.dart';
import 'components/month_picker.dart';

class CalendarPage extends StatelessWidget implements AutoRouteWrapper {
  const CalendarPage({Key key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => getIt<EventWatcherCubit>()
          ..watchMonth(DateTime.now().toDate())
      ),
      BlocProvider(
        create: (context) => getIt<EventActorBloc>(),
      ),
    ],
    child: this
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(112),
        child: AppBar(
          title: Text('Events'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: Container(
              height: 56,
              child: HorizontalMonthPicker(
                startDate: DateTime.now(),
                endDate: DateTime.now().add(Duration(days: 365)),
                onSelected: (date) {
                  context
                    .read<EventWatcherCubit>()
                    .watchMonth(date);
                },
              ),
            ),
          ),
        )
      ),
      body: SafeArea(child: EventsOverview()),
      floatingActionButton: FloatingActionButton(
        elevation: 4,
        onPressed: () {
          ExtendedNavigator.of(context).push(
            Routes.eventPage,
            arguments: EventPageArguments(event: null),
          );
        },
        child: Icon(DaylyIcons.add)
      ),
    );
  }
}
