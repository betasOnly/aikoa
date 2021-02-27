import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:Dayly/app/router.gr.dart';
import 'package:Dayly/app/core/widgets/base_card.dart';
import 'package:Dayly/domain/calendar/calendar.dart';

class EventCard extends StatelessWidget {
  final Event event;
  const EventCard({Key key, this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: BaseCard(
        onTap: () {
          ExtendedNavigator.of(context).push(
            Routes.eventPage,
            arguments: EventPageArguments(event: event),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                'Event',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.overline,
              ),
            ),
            Text(
              event.title.getOrCrash(),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle1
            ),
            Spacer(),
            Text(
              event.timeSlot.toText(),
              style: Theme.of(context).textTheme.overline
            )
          ],
        ),
      ),
    );
  }
}