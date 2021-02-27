import 'package:Dayly/app/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:swipedetector/swipedetector.dart';

import 'package:Dayly/injection.dart';
import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/core/bloc/tags/cubit/tags_watcher_cubit.dart';
import 'package:Dayly/app/core/bloc/tasks/task_actor/task_actor_bloc.dart';
import 'package:Dayly/app/core/bloc/notes/note_actor/note_actor_bloc.dart';
import 'package:Dayly/app/core/bloc/notes/note_watcher/note_watcher_cubit.dart';
import 'package:Dayly/app/core/bloc/onboarding/onboarding_bloc.dart';
import 'package:Dayly/app/core/components/highlight_coachmark/highlight_coachmark.dart';
import 'package:Dayly/app/pages/home/components/schedule_overview/schedule_overview.dart';

import 'components/navigation_cards/calendar_card.dart';
import 'components/navigation_cards/habits_card.dart';
import 'components/navigation_cards/stats_card.dart';
import 'components/schedule_overview/focus_card.dart';
import 'components/side_drawer/side_drawer.dart';
import 'components/tasks_notes_overview/overview.dart';
import 'task_or_note_dialog.dart';

class HomePage extends StatefulWidget implements AutoRouteWrapper {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider<TaskActorBloc>(
        create: (context) => getIt<TaskActorBloc>(),
      ),
      BlocProvider<NoteWatcherCubit>(
        create: (context) => getIt<NoteWatcherCubit>()..watchAll()
      ),
      BlocProvider<NoteActorBloc>(
        create: (context) => getIt<NoteActorBloc>(),
      ),
      BlocProvider(
      create: (context) => getIt<TagsWatcherCubit>()..watchAll(),
      )
    ],
    child: this
  );

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final fabKey = GlobalKey();
  final _panelController = PanelController();

  @override
  void initState() { 
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      context.read<OnboardingBloc>().listen((state) {
        state.maybeMap(
          createTask: (state) => highlightFAB(),
          scheduleTask: (state) => highlightScheduleWidget(),
          focusTask: (state) => highlightFocusWidget(),
          pomodoroMode: (state) => highlightFocusMode(),
          checkTask: (state) => highlightCheck(),
          viewTasks: (state) => highlightTasksView(),
          orElse: () {}
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_panelController.isPanelOpen) {
          _panelController.close();
          return false;
        } else {
          return true;
        }
      },
      child: KeyboardDismissOnTap(
        child: SafeArea(
          top: false,
          child: Scaffold(
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
            ),
            body: SlidingUpPanel(
              controller: _panelController,
              parallaxEnabled: true,
              parallaxOffset: 0.015,
              boxShadow: null,
              backdropEnabled: true,
              backdropOpacity: 0,
              backdropTapClosesPanel: true,
              maxHeight: MediaQuery.of(context).size.height - 128,
              minHeight: 80,
              color: Colors.transparent,
              body: SafeArea(
                child: SwipeDetector(
                  onSwipeUp: () {
                    _panelController.open();
                  },
                  child: Column(
                    children: <Widget>[
                      Expanded(child: ScheduleOverview()),
                      SizedBox(height: 16,),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(
                            16, 0, 16, MediaQuery.of(context).viewPadding.bottom + 80),
                          child: Row(
                            children: [
                              Expanded(
                                child: CalendarCard()
                              ),
                              SizedBox(width: 4,),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Expanded(child: StatsCard()),
                                    SizedBox(height: 4,),
                                    Expanded(child: HabitsCard())
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              panel: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Positioned.fill(
                    top: 24,
                    child: Material(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)
                      ),
                      elevation: 1.0,
                      child: TaskNotesOverview(
                        openPanel: () {
                          if (!_panelController.isPanelOpen) {
                            _panelController.open();
                          }
                        },
                        closePanel: () {
                          if (_panelController.isPanelOpen) {
                            _panelController.close();
                          }
                        }
                      )
                    ),
                  ),
                  FloatingActionButton(
                    key: fabKey,
                    elevation: 4,
                    onPressed: () {
                      Navigator.of(context).push(TaskOrNoteDialog());
                    },
                    child: Icon(DaylyIcons.add)
                  )
                ],
              ),
            ),
            drawer: Drawer(
              child: SideDrawer(),
            ),
          ),
        ),
      ),
    );
  }

  void highlightFAB() {
    CoachMark coachMarkFAB = CoachMark();
    RenderBox target = fabKey.currentContext.findRenderObject();

    // you can change the shape of the mark
    Rect markRect = target.localToGlobal(Offset.zero) & target.size;
    markRect = Rect.fromCircle(center: markRect.center, radius: markRect.longestSide * 0.6);

    coachMarkFAB.show(
      targetContext: fabKey.currentContext,
      markRect: markRect,
      children: [
        Positioned(
          top: markRect.top - 64,
          left: 0,
          right: 0,
          child: Text(
            "Create your first task",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5.copyWith(
              color: Colors.white
            )
          ),
        ),
      ],
      duration: null,
      onClose: () {
        ExtendedNavigator.of(context).push(
          Routes.taskPage,
          arguments: TaskPageArguments(task: null),
        ).then((_) {
          context.read<OnboardingBloc>().add(OnboardingEvent.createdTask());
        });
      }
    );
  }

  void highlightScheduleWidget() {
    CoachMark coachMarkFAB = CoachMark();
    RenderBox target = ScheduleOverview.focusKey.currentContext.findRenderObject();

    // you can change the shape of the mark
    Rect markRect = target.localToGlobal(Offset.zero) & target.size;

    coachMarkFAB.show(
      targetContext: ScheduleOverview.focusKey.currentContext,
      markRect: markRect,
      markShape: BoxShape.rectangle,
      children: [
      ],
      duration: null,
      onClose: () {
        ExtendedNavigator.of(context).push(Routes.selectTasksDialog).then((_) {
          ExtendedNavigator.of(context).push(Routes.schedulingPage).then((_) {
            context.read<OnboardingBloc>().add(OnboardingEvent.scheduledTask());
          });
        });
      }
    );
  }

  void highlightFocusWidget() {
    CoachMark coachMarkFAB = CoachMark();
    RenderBox target = ScheduleOverview.scheduleKey.currentContext.findRenderObject();

    // you can change the shape of the mark
    Rect markRect = target.localToGlobal(Offset.zero) & target.size;

    coachMarkFAB.show(
      targetContext: ScheduleOverview.scheduleKey.currentContext,
      markRect: markRect.inflate(16.0),
      markShape: BoxShape.rectangle,
      children: [
        Positioned(
          top: markRect.bottom + 8,
          height: markRect.height,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              "Swipe down",
              style: Theme.of(context).textTheme.headline5.copyWith(
                color: Colors.white
              )
            ),
          )
        ),
      ],
      duration: null,
      onClose: () {
      }
    );
  }

  void highlightFocusMode() {
    CoachMark coachMarkFAB = CoachMark();
    RenderBox target = FocusCard.focusButtonKey.currentContext.findRenderObject();

    // you can change the shape of the mark
    Rect markRect = target.localToGlobal(Offset.zero) & target.size;
    markRect = Rect.fromCircle(center: markRect.center, radius: markRect.longestSide * 0.6);

    coachMarkFAB.show(
      targetContext: FocusCard.focusButtonKey.currentContext,
      markRect: markRect,
      children: [
      ],
      duration: null,
      onClose: () {
        ExtendedNavigator.of(context).push(
          Routes.focusPage,
        ).then((_) {
          context.read<OnboardingBloc>().add(OnboardingEvent.pomodoroUsed());
        });
      }
    );
  }

  void highlightCheck() {
    CoachMark coachMarkFAB = CoachMark();
    RenderBox target = ScheduleOverview.focusKey.currentContext.findRenderObject();

    // you can change the shape of the mark
    Rect markRect = target.localToGlobal(Offset.zero) & target.size;

    coachMarkFAB.show(
      targetContext: ScheduleOverview.focusKey.currentContext,
      markRect: markRect,
      markShape: BoxShape.rectangle,
      children: [
      ],
      duration: null,
      onClose: () {
      }
    );
  }

  void highlightTasksView() {
    _panelController.open();
  }
}