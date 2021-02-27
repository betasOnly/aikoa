import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/core/widgets/sliders.dart';

import 'pomodoro_timer/bloc/pomodoro_bloc.dart';

class DurationPicker extends StatelessWidget {
  const DurationPicker({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DurationSlider(
            text: 'Focus',
            init: context.watch<PomodoroBloc>().focusDuration,
            onChanged: (duration) {
              context
                .read<PomodoroBloc>()
                .add(PomodoroEvent.focusDurationChanged(duration));
            },
          ),
          SizedBox(height: 16,),
          DurationSlider(
            text: 'Break',
            min: 3,
            interval: 1,
            max: 30,
            init: context.watch<PomodoroBloc>().breakDuration,
            onChanged: (duration) {
              context
                .read<PomodoroBloc>()
                .add(PomodoroEvent.shortBreakDurationChanged(duration));
            },
          )
      ],
    );
  }
}