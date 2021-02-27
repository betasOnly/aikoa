import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/core/widgets/buttons.dart';
import 'package:Dayly/app/core/bloc/tasks/task_watcher/task_watcher_cubit.dart';
import 'package:Dayly/app/core/bloc/notes/note_actor/note_actor_bloc.dart';
import 'package:Dayly/app/core/bloc/notes/note_watcher/note_watcher_cubit.dart';
import 'package:Dayly/app/core/bloc/tasks/task_actor/task_actor_bloc.dart';

import 'action_bar.dart';
import 'filter_search_bar.dart';
import 'notes_overview.dart';
import 'tasks_overview.dart';

class TaskNotesOverview extends StatefulWidget {
  final VoidCallback openPanel;
  final VoidCallback closePanel;
  TaskNotesOverview({Key key, this.openPanel, this.closePanel})
      : super(key: key);

  @override
  _TaskNotesOverviewState createState() => _TaskNotesOverviewState();
}

class _TaskNotesOverviewState extends State<TaskNotesOverview>
  with SingleTickerProviderStateMixin {
  
  TabController _tabController;
  ValueNotifier<bool> isTasks;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    isTasks = ValueNotifier(true);
    _tabController.addListener(() {
      isTasks.value = _tabController.index == 0;
      isTasks.notifyListeners();
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    isTasks.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: <Widget>[
             ValueListenableBuilder(
                valueListenable: isTasks,
                builder: (context, isSelected, _) {
                  return TabButton(
                    isSelected: isSelected,
                    icon: DaylyIcons.tasks,
                    label: 'Tasks',
                    onPressed: () {
                      widget.openPanel();
                      setState(() {
                        _tabController.animateTo(0);
                      });
                    },
                  );
                }
              ),
              Spacer(),
              ValueListenableBuilder(
                valueListenable: isTasks,
                builder: (context, isNotSelected, _) {
                  return TabButton(
                    isSelected: !isNotSelected,
                    icon: DaylyIcons.notes,
                    label: 'Notes',
                    onPressed: () {
                      widget.openPanel();
                      setState(() {
                        _tabController.animateTo(1);
                      });
                    }
                  );
                }
              )
            ]
          ),
        ),
        ValueListenableBuilder(
          valueListenable: isTasks,
          builder: (context, _isTasks, _) {
            return BlocBuilder<TaskActorBloc, TaskActorState>(
              buildWhen: (p, c) => p.numSelected != c.numSelected,
              builder: (context, taskState) {
                return BlocBuilder<NoteActorBloc, NoteActorState>(
                  buildWhen: (p, c) => p.numSelected != c.numSelected,
                  builder: (context, noteState) {
                    if (_isTasks && taskState.isSelecting) {
                      return ActionBar(
                        numSelected: taskState.numSelected,
                        onDeletePressed: () {
                          context
                            .read<TaskActorBloc>()
                            .add(const TaskActorEvent.deletedAll());
                        },
                        onUndoPressed: () {
                          context
                            .read<TaskActorBloc>()
                            .add(const TaskActorEvent.unselectedAll());
                        },
                      );
                    } else if (!_isTasks && noteState.isSelecting) {
                      return ActionBar(
                        numSelected: noteState.numSelected,
                        onDeletePressed: () {
                          context
                            .read<NoteActorBloc>()
                            .add(const NoteActorEvent.deletedAll());
                        },
                        onUndoPressed: () {
                          context
                            .read<NoteActorBloc>()
                            .add(const NoteActorEvent.unselectedAll());
                        },
                      );
                    } else {
                      return FilterSearchBar(
                        onTitleChange: (title) {
                          context
                            .read<TaskWatcherCubit>()
                            .searchTitle(title);
                          context
                            .read<NoteWatcherCubit>()
                            .searchTitle(title);
                        },
                        onTagsChange: (tags) {
                          context
                            .read<TaskWatcherCubit>()
                            .filterTags(tags);
                          context
                            .read<NoteWatcherCubit>()
                            .filterTags(tags);
                        },
                      );
                    }
                  }
                );
              }
            );
          }
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              TasksOverview(),
              NotesOverview()
            ]
          )
        ),
      ]
    );
  }
}