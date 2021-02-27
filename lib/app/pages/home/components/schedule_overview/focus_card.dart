import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:Dayly/app/router.gr.dart';
import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/core/widgets/base_card.dart';
import 'package:Dayly/app/core/widgets/buttons.dart';
import 'package:Dayly/domain/calendar/calendar.dart';
import 'package:Dayly/domain/schedule/timebox.dart';
import 'package:timer_builder/timer_builder.dart';

class FocusCard extends StatelessWidget {
  static final focusButtonKey = GlobalKey();
  final Either<Event, TimeBox> eventOrTimebox;

  const FocusCard({Key key, this.eventOrTimebox}) : super(key: key);

  static DateFormat timeFormat = DateFormat.Hm();

  Option<Duration> get timeLeft {
    return eventOrTimebox.fold(
      (event) => some(event.timeSlot.end.difference(DateTime.now())),
      (timebox) => timebox.timeSlot.fold(
        (_) => none(),
        (timeSlot) => some(timeSlot.end.difference(DateTime.now())))
      );
  }

  DateTime get end => eventOrTimebox.fold(
    (event) => event.timeSlot.end,
    (timebox) => timebox.end);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      onTap: () {
        eventOrTimebox.fold(
          (event) {
            ExtendedNavigator.of(context).push(
              Routes.eventPage,
              arguments: EventPageArguments(event: event),
            );
          },
          (timebox) {
            ExtendedNavigator.of(context).push(
              Routes.taskPage,
              arguments: TaskPageArguments(task: timebox.task),
            );
          }
        );
      },
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  eventOrTimebox.fold(
                    (event) => 'Event',
                    (timebox) => timebox.task.tag.fold(
                      () => ' ',
                      (tag) => tag.name.getOrCrash())
                  ),
                  style: Theme.of(context).textTheme.subtitle2
                ),
                SizedBox(height: 12,),
                Text(
                  eventOrTimebox.fold(
                    (event) => event.title.getOrCrash(),
                    (timebox) => timebox.task.title.getOrCrash()
                  ),
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.headline6
                ),
                Spacer(),
                TimerBuilder.periodic(Duration(seconds: 1),
                  builder: (context) {
                    return Text(
                      timeLeft.fold(
                        () => '',
                        (duration) => duration.inMinutes > 0
                          ? '${duration.inMinutes+1} min left'
                          : 'Ended ${timeFormat.format(end)}'
                      ),
                      style: Theme.of(context).textTheme.subtitle2
                    );
                  }
                ),
              ],
            ),
          ),
          SizedBox(width: 16,),
          Hero(
            key: focusButtonKey,
            tag: 'pomodoroHero',
            child: CircularButton(
              icon: DaylyIcons.focus,
              onPressed: () {
                ExtendedNavigator.of(context).push(
                  Routes.focusPage,
                  arguments: FocusPageArguments(
                    eventOrTask: eventOrTimebox.map((timebox) => timebox.task)
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}