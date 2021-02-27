import 'package:Dayly/app/pages/calendar/event_page/event_form/event_form_bloc.dart';
import 'package:Dayly/app/pages/calendar/event_page/widgets/body_field_widget.dart';
import 'package:Dayly/app/pages/task/task_form/task_form_bloc.dart';
import 'package:Dayly/app/pages/task/widgets/content_tile_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' hide Task, State;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:Dayly/injection.dart';
import 'package:Dayly/app/router.gr.dart';
import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/core/widgets/buttons.dart';
import 'package:Dayly/domain/calendar/calendar.dart';
import 'package:Dayly/domain/tasks/task.dart';
import 'package:swipedetector/swipedetector.dart';

import 'components/duration_picker.dart';
import 'components/pomodoro_timer/bloc/pomodoro_bloc.dart';
import 'components/pomodoro_timer/pomodoro_timer.dart';

class FocusPage extends StatefulWidget implements AutoRouteWrapper {
  final Either<Event,Task> eventOrTask;

  const FocusPage({Key key, this.eventOrTask}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
    create: (context) => getIt<PomodoroBloc>()
      ..add(const PomodoroEvent.initialized()),
    child: this
  );

  @override
  _FocusPageState createState() => _FocusPageState();
}

class _FocusPageState extends State<FocusPage> {
  final PanelController _controller = PanelController();

  Future<void> onBackTap() => showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('Finished?'),
        content: Text('This will close the focus mode and reset the timer.'),
        actions: [
          FlatButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            }
          ),
          FlatButton(
            child: Text('Accept'),
            onPressed: () {
              ExtendedNavigator.of(context).popUntil((route) =>
                route.settings.name == Routes.homePage);
            },
          )
        ],
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_controller.isPanelOpen) {
          _controller.close();
          return false;
        } else {
          await onBackTap();
          return false;
        }
      },
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(DaylyIcons.back),
              onPressed: () {
                FocusScope.of(context).unfocus();
                onBackTap();
              }
            ),
            centerTitle: false,
            title: Text(
              widget.eventOrTask != null
              ? widget.eventOrTask.fold(
                (event) => event.title.getOrCrash(),
                (task) => task.title.getOrCrash())
              : 'Pomodoro',
              overflow: TextOverflow.ellipsis,
            ),
          ),
          body: SafeArea(
            child: SlidingUpPanel(
              controller: _controller,
              parallaxEnabled: true,
              parallaxOffset: 0.015,
              boxShadow: null,
              backdropEnabled: true,
              backdropOpacity: 0,
              backdropTapClosesPanel: true,
              maxHeight: MediaQuery.of(context).size.height - 128,
              minHeight: 64,
              color: Colors.transparent,
              body: SwipeDetector(
                onSwipeUp: () {
                  _controller.open();
                },
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: PomodoroTimer()
                    ),
                    SizedBox(height: 16,),
                    DurationPicker()
                  ],
                ),
              ),
              panel: KeyboardDismissOnTap(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Material(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24)
                        ),
                        elevation: 1.0,
                        child: Container(
                          alignment: Alignment.topCenter,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              TabButton(
                                isSelected: true,
                                icon: DaylyIcons.notes,
                                label: 'Notes',
                                onPressed: _controller.open
                              ),
                            ],
                          ),
                        ),
                      )
                    ),
                    if (widget.eventOrTask != null) Positioned.fill(
                      top: 56,
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                      child: widget.eventOrTask.fold(
                        (event) => BlocProvider(
                          create: (context) => getIt<EventFormBloc>()
                            ..add(EventFormEvent.initialized(optionOf(event))),
                          child: BodyField(
                            onSubmitted: (_) {
                              context
                                .read<EventFormBloc>()
                                .add(const EventFormEvent.saved());
                            },
                          )
                        ),
                        (task) => BlocProvider(
                          create: (context) => getIt<TaskFormBloc>()
                            ..add(TaskFormEvent.initialized(optionOf(task))),
                          child: ListView(
                            children: [
                              ContentTile(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ),
          ),
        ),
      ),
    );
  }
}