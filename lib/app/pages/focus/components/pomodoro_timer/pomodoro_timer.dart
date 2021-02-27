import 'package:flutter/material.dart';

import 'widgets/percentage_ring.dart';
import 'widgets/timer_widget.dart';

class PomodoroTimer extends StatelessWidget {
  const PomodoroTimer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned.fill(
            child: Material(
              elevation: 2.0,
              shape: CircleBorder(),
              color: Theme.of(context).colorScheme.primary,
              child: PercentageRing()
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Hero(
                tag: 'pomodoroHero',
                child: Material(
                  elevation: 4.0,
                  shape: CircleBorder(),
                  color: Theme.of(context).colorScheme.surface,
                  child: Container()
                ),
              ),
            ),
          ),
          TimerWidget()
        ],
      ),
    );
  }
}

