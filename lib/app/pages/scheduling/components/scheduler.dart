import 'package:flutter/material.dart';

import 'meridiem_switcher.dart';
import 'schedule_chart.dart';
import 'timeslot_widget.dart';

class Scheduler extends StatelessWidget {
  Scheduler({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: AspectRatio(
            aspectRatio: 1,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned.fill(
                  child: Material(
                    elevation: 2.0,
                    shape: CircleBorder(),
                    color: Theme.of(context).colorScheme.primary,
                    child: ScheduleChart()
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: TimeSlotWidget()
                ),
              ],
            ),
          ),
        ),
        MeridiemSwitcher()
      ],
    );
  }
}