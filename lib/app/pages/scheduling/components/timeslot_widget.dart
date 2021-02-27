import 'dart:math';
import 'dart:ui';

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';

import 'package:Dayly/app/core/bloc/schedule/schedule_planner/schedule_planner_bloc.dart';
import 'package:Dayly/domain/core/extensions.dart';
import 'package:Dayly/domain/schedule/timebox.dart';

class TimeSlotWidget extends StatelessWidget {
  static double strokerWidth = 18.0;
  static double handlerOuterRadius = 12.0;
  static double opacity = 0.6;

  const TimeSlotWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: 'schedulingHero',
          child: Material(
            elevation: 4.0,
            shape: CircleBorder(),
            color: Theme.of(context).colorScheme.surface,
            child: Container(),
          ),
        ),
        BlocBuilder<SchedulePlannerBloc, SchedulePlannerState>(
          buildWhen: (p, c) {
            return p.selected.getOrElse(() => null)?.id 
              != c.selected.getOrElse(() => null)?.id;
          },
          builder: (context, state) => state.selected.fold(
            () => _buildSmileySlider(context),
            (TimeBox selected) => SizedBox.expand(
              // Hack to update double circular slider when new timeslot is
              // selected
              key: ValueKey(DateTime.now()),
              child: DoubleCircularSlider(
                48,
                _toInt(selected.start),
                _toInt(selected.end),
                baseColor: Colors.transparent,
                selectionColor: Theme.of(context).colorScheme.secondary.withOpacity(
                  opacity
                ),
                handlerColor: Theme.of(context).colorScheme.secondary,
                handlerOutterRadius: handlerOuterRadius,
                onSelectionChange: (start, end, _) {
                  final bool isAM = context
                    .read<SchedulePlannerBloc>()
                    .state.isAM;
                  final time = _toTime(start, !isAM);
                  final startTime = DateTime(
                    selected.start.year, selected.start.month,
                    selected.start.day, time.hour, time.minute);
                  final endTime = startTime.add(_toDuration(start, end));
                  context
                    .read<SchedulePlannerBloc>()
                    .add(SchedulePlannerEvent.updated(selected.copyWith(
                      timeSlot: right(TimeSlot(startTime, endTime))
                    )));
                },
                sliderStrokeWidth: strokerWidth,
                child: Dial()
              )
            )
          )
        ),
        Positioned.fill(
          child: Center(
            child: BlocBuilder<SchedulePlannerBloc, SchedulePlannerState>(
              builder: (context, state) => state.selected.fold(
                () => Container(),
                (selected) => FractionallySizedBox(
                  widthFactor: 1 / 2,
                  heightFactor: 1 / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            selected.start.timeText(),
                            style: Theme.of(context).textTheme.subtitle1
                              .copyWith(fontFeatures: [FontFeature.tabularFigures()]),
                          ),
                        ),
                      ),
                      Text('-',
                        style: Theme.of(context).textTheme.subtitle1
                      ),
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            selected.end.timeText(),
                            style: Theme.of(context).textTheme.subtitle1
                              .copyWith(fontFeatures: [FontFeature.tabularFigures()]),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              )
            )
          ),
        ),
      ]
    );
  }

  Widget _buildSmileySlider(BuildContext context) {
    return AbsorbPointer(
      child: SizedBox.expand(
        child: DoubleCircularSlider(
          48,
          6,
          34,
          baseColor: Colors.transparent,
          selectionColor: Theme.of(context).colorScheme.secondary.withOpacity(
            opacity
          ),
          handlerColor: Theme.of(context).colorScheme.secondary,
          handlerOutterRadius: handlerOuterRadius,
          onSelectionChange: (init, end, _) {},
          sliderStrokeWidth: strokerWidth,
          child: Dial()
        )
      ),
    );
  }

  int _toInt(DateTime time) {
    if (time != null) {
      return 4 * (time.hour % 12)+ time.minute ~/ 15;
    } else {
      return null;
    }
  }

  int _toHour(int value, bool isPM) => (value ~/ 4) % 12 + (isPM ? 12 : 0);

  int _toMinute(int value) => (value % 4) * 15;

  TimeOfDay _toTime(int value, bool isPM) => TimeOfDay(
    hour: _toHour(value, isPM), minute: _toMinute(value));

  Duration _toDuration(int start, int end) {
    if (start <= end) {
      return Duration(minutes: 15 * (end - start ));
    } else {
      return Duration(minutes: 15 * (48 + end - start));
    }
  }
}

class Dial extends StatelessWidget {
  const Dial({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: CustomPaint(
        painter: DialPainter(
          color: Theme.of(context).colorScheme.onSurface
            .withOpacity(0.6),
          textStyle: Theme.of(context).textTheme.overline.copyWith(
            color: Theme.of(context).colorScheme.onSurface
          )
        )
      ),
    );
  }
}

class DialPainter extends CustomPainter {
  final TextStyle textStyle;
  final hourTickMarkLength = 20.0;
  final minuteTickMarkLength = 0.0;

  final Paint tickPaint;
  final TextPainter textPainter;

  DialPainter({@required this.textStyle, Color color})
    : tickPaint = new Paint(),
      textPainter = new TextPainter(
        textAlign: TextAlign.center,
        // textDirection: TextDirection.rtl,
      ) {
      tickPaint.strokeWidth = 1;
      tickPaint.color = color;
    }


  @override
  void paint(Canvas canvas, Size size) {
    var tickMarkLength;
    final angle = 2 * pi / 48;
    final radius = size.shortestSide / 2;
    canvas.save();

    // Sets the position of the canvas to the center of the layout
    canvas.translate(size.width / 2, size.height / 2);
    for (var i = 0; i < 48; i++) {
      // Decides when to  make the length and stroke of the tick marker,
      // longer and thicker depending on its position on the clock.
      tickMarkLength = i % 4 == 0
        ? hourTickMarkLength : minuteTickMarkLength;
      canvas.drawLine(
        Offset(0.0, -radius),
        Offset(0.0, -radius + tickMarkLength),
        tickPaint
      );
      canvas.rotate(angle);
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}