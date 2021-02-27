import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:Dayly/injection.dart';
import 'package:Dayly/app/router.gr.dart';
import 'package:Dayly/app/core/bloc/calendar/calendar_manager/calendar_manager_cubit.dart';
import 'package:Dayly/app/core/bloc/calendar/event_watcher/event_watcher_cubit.dart';
import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/core/widgets/base_card.dart';
import 'package:Dayly/domain/calendar/calendar.dart';
import 'package:intl/intl.dart';

class CalendarCard extends StatelessWidget {
  const CalendarCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarManagerCubit, CalendarManagerState>(
      buildWhen: (p, c) => p.connected != c.connected,
      builder: (context, state) {
        return BaseCard(
          onTap: () {
            state.connected.fold(
              () => null,
              (_) => ExtendedNavigator.of(context).push(Routes.calendarPage));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(DaylyIcons.events),
                  SizedBox(width: 8,),
                  Text(
                    AppLocalizations.of(context).calendarPageTitle,
                    style: Theme.of(context).textTheme.subtitle2
                      .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Expanded(
                child: Opacity(
                  opacity: 0.87,
                  child: IgnorePointer(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: state.connected.fold(
                        () => Container(),
                        (calendar) {
                          return BlocProvider(
                            create: (context) => getIt<EventWatcherCubit>()
                                ..watchUpcoming(3),
                            child: BlocBuilder<EventWatcherCubit, EventWatcherState>(
                              builder: (context, state) => state.maybeMap(
                                loadSuccess: (state) {
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    itemCount: state.events.length,
                                    itemBuilder: (context, index) {
                                      return _buildEvent(context, state.events[index]);
                                    }
                                  );
                                },
                                orElse: () => Container(),
                              ),
                            ),
                          );
                        }),
                    ),
                  ),
                ),
              ),
            ]
          )
        );
      }
    );
  }

  Widget _buildEvent(BuildContext context, Event event) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                event.timeSlot.start.day.toString(),
                style: Theme.of(context).textTheme.subtitle2
              ),
              SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    DateFormat("MMMM").format(event.timeSlot.start),
                    style: Theme.of(context).textTheme.overline
                  ),
                  Text(
                    event.timeSlot.toText(),
                    style: Theme.of(context).textTheme.overline
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 4,),
          Text(
            event.title.getOrCrash(),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.caption
          ),
        ],
      )
    );
  }
}