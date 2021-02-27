import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/core/bloc/schedule/schedule_planner/schedule_planner_bloc.dart';
import 'package:Dayly/app/core/bloc/schedule/schedule_watcher/schedule_watcher_cubit.dart';
import 'package:Dayly/domain/core/value_objects.dart';

class ScheduleChart extends StatelessWidget {
  ScheduleChart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleWatcherCubit, ScheduleWatcherState>(
      builder: (context, state) => state.maybeMap(
        loadSuccess: (state) {
          return BlocBuilder<SchedulePlannerBloc, SchedulePlannerState>(
            buildWhen: (p, c) => p.isAM != c.isAM,
            builder: (context, state2) {
              return CustomPaint(
                painter: SchedulePainter(
                  schedule: state.schedule
                    .map((eventOrTask) => eventOrTask.fold(
                      (event) => event.timeSlot,
                      (task) => task.timeSlot.getOrElse(() => null)
                    ))
                    .where((timeSlot) => timeSlot != null)
                    .toList(),
                  showPM: !state2.isAM,
                  width: 40,
                  color: Theme.of(context).colorScheme.primaryVariant
                ),
              );
            }
          );
        },
        orElse: () => Container(),
      )
    );
  }
}

class SchedulePainter extends CustomPainter {
  final List<TimeSlot> schedule;
  final bool showPM;
  final double width;
  final Color color;

  SchedulePainter({
    @required this.schedule,
    @required this.width,
    @required this.color,
    this.showPM=false
  });

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 4, size.height / 4);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = color
      ..strokeWidth = size.width / 2 - 16;
    
    for (var timebox in schedule) {
      if (timebox.end != null) {
        int start = 60*timebox.start.hour + timebox.start.minute;
        int duration = timebox.end.difference(timebox.start).inMinutes;
        if (showPM && timebox.end.hour >= 12) {
          canvas.drawArc(
            Rect.fromCircle(center: center, radius: radius),
            max(0, start - 60 * 12) / (60*12) * 2 * pi - pi/ 2,
            min(duration, duration + start - 60*12) / (12 * 60) * 2 * pi,
            false,
            paint
          );
        }
        if (!showPM && timebox.start.hour < 12) {
          canvas.drawArc(
            Rect.fromCircle(center: center, radius: radius),
            start / (60*12) * 2 * pi - pi/ 2,
            duration / (12 * 60) * 2 * pi,
            false,
            paint
          );
        }
      }
    }
  }

  @override
  bool shouldRepaint(SchedulePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(SchedulePainter oldDelegate) => false;
}