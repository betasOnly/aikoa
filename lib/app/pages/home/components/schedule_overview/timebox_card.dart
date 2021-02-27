import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:Dayly/app/router.gr.dart';
import 'package:Dayly/app/core/widgets/base_card.dart';
import 'package:Dayly/domain/schedule/timebox.dart';

class TimeBoxCard extends StatelessWidget {
  final TimeBox timebox;
  const TimeBoxCard({Key key, this.timebox}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: BaseCard(
        onTap: () {
          ExtendedNavigator.of(context).push(
            Routes.taskPage,
            arguments: TaskPageArguments(task: timebox.task),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                timebox.task.tag.fold(
                  () => '',
                  (tag) => tag.name.getOrCrash(),
                ),
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.overline,
              ),
            ),
            Text(
              timebox.task.title.getOrCrash(),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle1
            ),
            Spacer(),
            timebox.timeSlot.fold(
              (l) => Container(),
              (slot) => Text(
                slot.toText(),
                style: Theme.of(context).textTheme.overline
              )
            ),
          ],
        ),
      ),
    );
  }
}