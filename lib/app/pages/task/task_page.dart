import 'package:Dayly/app/core/components/smart_editor/keyboard_avoider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' hide State, Task;
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/core/bloc/tasks/task_actor/task_actor_bloc.dart';
import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/core/widgets/listview_utils.dart';
import 'package:Dayly/app/core/widgets/progress.dart';
import 'package:Dayly/app/router.gr.dart';
import 'package:Dayly/domain/tasks/task.dart';
import 'package:Dayly/injection.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import 'task_form/task_form_bloc.dart';
import 'widgets/tag_tile_widget.dart';
import 'widgets/content_tile_widget.dart';
import 'widgets/deadline_tile_widget.dart';
import 'widgets/title_field_widget.dart';


class TaskPage extends StatelessWidget {
  final Task task;

  const TaskPage({
    Key key,
    @required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<TaskFormBloc>()
            ..add(TaskFormEvent.initialized(optionOf(task))),
        ),
        BlocProvider(
          create: (context) => getIt<TaskActorBloc>()
        ),
      ],
      child: BlocConsumer<TaskFormBloc, TaskFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                },
                (_) {
                  ExtendedNavigator.of(context).popUntil((route) =>
                    route.settings.name == Routes.homePage);
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const TaskPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class TaskPageScaffold extends StatefulWidget {
  const TaskPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  _TaskPageScaffoldState createState() => _TaskPageScaffoldState();
}

class _TaskPageScaffoldState extends State<TaskPageScaffold> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // We need to disable the auto paddimng from scaffold for the keyboard
      // avoider
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        leading: BlocBuilder<TaskFormBloc, TaskFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) {
            if (state.isEditing) {
              return  IconButton(
                icon: Icon(DaylyIcons.back),
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  ExtendedNavigator.of(context).popUntil((route) =>
                    route.settings.name == Routes.homePage);
                }
              );
            } else {
              return IconButton(
                icon: Icon(DaylyIcons.back),
                onPressed: () {
                  context
                      .read<TaskActorBloc>()
                      .add(TaskActorEvent.deleted(state.task));
                  ExtendedNavigator.of(context).popUntil((route) =>
                    route.settings.name == Routes.homePage);
                }
              );
            }
          }
        ),
        actions: <Widget>[
          BlocBuilder<TaskFormBloc, TaskFormState>(
            buildWhen: (p, c) => p.isEditing != c.isEditing,
            builder: (context, state) {
              if (state.isEditing) {
                return IconButton(
                  icon: Icon(DaylyIcons.delete),
                  onPressed: () async {
                    context
                      .read<TaskActorBloc>()
                      .add(TaskActorEvent.deleted(state.task));
                    ExtendedNavigator.of(context).popUntil((route) =>
                      route.settings.name == Routes.homePage);
                  },
                );
              } else {
                return Container();
              }
            }
          )
        ],
      ),
      body: SafeArea(
        child: KeyboardDismissOnTap(
          child: BlocBuilder<TaskFormBloc, TaskFormState>(
            buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
            builder: (context, state) {
              return Form(
                autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
                child: KeyboardAvoider(
                  autoScroll: false,
                  child: ListView.separated(
                    controller: _scrollController,
                    separatorBuilder: (context, index) => ListViewSeperator(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return TitleField();
                          break;
                        case 1:
                          return Column(
                            children: [
                              TagTile(),
                              DeadlineTile()
                            ],
                          );
                        default:
                          return ContentTile();
                      }
                    }
                  ),
                ),
              );
            },
          ),
        ),
      ),
      persistentFooterButtons: [
        FlatButton(
          child: Text('Save'),
          onPressed: () {
            FocusScope.of(context).unfocus();
            context
              .read<TaskFormBloc>()
              .add(const TaskFormEvent.saved());
          },
        ),
      ],
    );
  }
}