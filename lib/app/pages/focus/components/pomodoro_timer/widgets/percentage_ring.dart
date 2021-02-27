import 'dart:math';

import 'package:Dayly/app/pages/focus/components/pomodoro_timer/bloc/pomodoro_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PercentageRing extends StatelessWidget {
  const PercentageRing({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PomodoroBloc, PomodoroState>(
      builder: (context, state) {
        return CustomPaint(
          painter: OuterRing(
            percentage: state.map(
              initial: (_) => 0,
              focused: (state) => 1 - state.percentage,
              focusPaused: (state) => 1 - state.percentage,
              shortBreak: (state) => state.percentage,
              breakPaused: (state) => state.percentage,
            ),
            width: 40,
            color: Theme.of(context).colorScheme.primaryVariant
          ),
        );
      }
    );
  }
}

class OuterRing extends CustomPainter {
  final double percentage;
  final double width;
  final Color color;

  OuterRing({
    @required this.percentage,
    @required this.width,
    @required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 4, size.height / 4);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = color
      ..strokeWidth = size.width / 2 - 16;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      - pi/ 2,
      percentage * 2 * pi,
      false,
      paint
    );
  }

  @override
  bool shouldRepaint(OuterRing oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(OuterRing oldDelegate) => false;
}