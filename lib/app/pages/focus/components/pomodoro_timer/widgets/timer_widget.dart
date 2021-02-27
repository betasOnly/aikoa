import 'dart:ui';

import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/domain/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/pages/focus/components/pomodoro_timer/bloc/pomodoro_bloc.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({Key key}) : super(key: key);

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> with
  TickerProviderStateMixin {

  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() { 
    super.initState();
    _controller = AnimationController(
      vsync: this,
      value: 1,
      duration: Duration(milliseconds: 200),
    );
    _animation = CurvedAnimation(
      curve: Curves.linear,
      parent: _controller
    );
  }

  @override
  void dispose() { 
    _controller.dispose();
    super.dispose();
  }

  void pause() {
    _controller.reverse();
    context.read<PomodoroBloc>().add(const PomodoroEvent.paused());
  }

  void resume() {
    _controller.forward();
    context.read<PomodoroBloc>().add(const PomodoroEvent.resumed());
  }

  void reset() {
    _controller.forward();
    context.read<PomodoroBloc>().add(const PomodoroEvent.reseted());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PomodoroBloc, PomodoroState>(
      builder: (context, state) => state.maybeMap(
        initial: (_) {
          return Center(
            child: FloatingActionButton(
              heroTag: null,
              backgroundColor: Theme.of(context).colorScheme.secondary,
              foregroundColor: Theme.of(context).colorScheme.onSecondary,
              child: Icon(DaylyIcons.focus),
              onPressed: () {
                context
                  .read<PomodoroBloc>()
                  .add(const PomodoroEvent.started());
              },
            ),
          );
        },
        orElse: () {
          return Opacity(
            opacity: 0.6,
            child: Column(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      state.maybeMap(
                        focused: (_) => 'Focus',
                        shortBreak: (_) => 'Take a break',
                        orElse: () => 'Paused'
                      ),
                      style: Theme.of(context).textTheme.headline6
                    )
                  ),
                ),
                Expanded(
                  child: FractionallySizedBox(
                    widthFactor: 2 / 3,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        state.maybeMap(
                          focused: (state) => state.duration.toMS(),
                          focusPaused: (state) => state.duration.toMS(),
                          shortBreak: (state) => state.duration.toMS(),
                          breakPaused: (state) => state.duration.toMS(),
                          orElse: () => ''
                        ),
                        style: Theme.of(context).textTheme.subtitle1
                          .copyWith(fontFeatures: [FontFeature.tabularFigures()]),
                      )
                    )
                  )
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            state.maybeMap(
                              focused: (_) => pause(),
                              focusPaused: (_) => resume(),
                              shortBreak: (_) => pause(),
                              breakPaused: (_) => resume(),
                              orElse: () {}
                            );
                          },
                          icon: AnimatedBuilder(
                            animation: _animation,
                            builder: (context, _) {
                              return AnimatedIcon(
                                icon: AnimatedIcons.play_pause,
                                progress: _animation,
                              );
                            }
                          ),
                        ),
                        IconButton(
                          icon: Icon(DaylyIcons.undo),
                          onPressed: reset,
                        ),
                      ],
                    )
                  ),
                )
              ],
            ),
          );
        }
      )
    );
  }
}