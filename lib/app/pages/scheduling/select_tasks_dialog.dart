import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' hide Task, State;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/core/bloc/tasks/task_watcher/task_watcher_cubit.dart';
import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/core/widgets/custom_grid_view.dart';
import 'package:Dayly/app/core/widgets/task_card.dart';
import 'package:Dayly/app/core/bloc/schedule/schedule_planner/schedule_planner_bloc.dart';
import 'package:Dayly/app/core/bloc/stats/stats_today/stats_today_cubit.dart';
import 'package:Dayly/domain/schedule/timebox.dart';
import 'package:Dayly/domain/tasks/task.dart';

class SelectTasksDialog extends StatefulWidget {
  final List<Task> hideTasks;
  SelectTasksDialog({Key key, this.hideTasks}): super(key: key);

  @override
  _SelectTasksDialogState createState() => _SelectTasksDialogState();
}

class _SelectTasksDialogState extends State<SelectTasksDialog> {
  final ValueNotifier<List<Task>> selectedTasks = ValueNotifier([]);

  @override
  void dispose() { 
    selectedTasks.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(DaylyIcons.back),
          onPressed: () {
            ExtendedNavigator.of(context).pop();
          }
        ),
        title: Text('Select Tasks'),
      ),
      body: SafeArea(
        child: BlocBuilder<TaskWatcherCubit, TaskWatcherState>(
          builder: (context, state) {
            return state.maybeMap(
              loadSuccess: (state) {
                final tasks = state.tasks.where((task) {
                  return !(widget.hideTasks?? []).contains(task);
                }).toList();
                return CustomGridView(
                  itemCount: tasks.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildCard(context, tasks[index]);
                  },
                );
              },
              orElse: () => Container()
            );
          }
        ),
      ),
      persistentFooterButtons: [
        FlatButton(
          child: Text('Save'),
          onPressed: () {
            // Makes sure that timebox is created for tomorrow if shutdown
            // completed
            // TODO: Move logic inside bloc
            final isToday = context.read<StatsTodayCubit>()
              .state.shutdown.isNone();
            for (Task task in selectedTasks.value) {
              TimeBox timebox = TimeBox.fromTask(task);
              if (!isToday) {
                timebox = timebox.copyWith(
                  timeSlot: left(timebox.start.add(Duration(days: 1)))
                );
              }
              context
                .read<SchedulePlannerBloc>()
                .add(SchedulePlannerEvent.added(timebox));
            }
            ExtendedNavigator.of(context).pop(selectedTasks.value);
          },
        ),
      ],
    );
  }

  Widget _buildCard(BuildContext context, Task task) {
    return ValueListenableBuilder(
      valueListenable: selectedTasks,
      builder: (context, selected, _) {
        final isSelected = selected.contains(task);
        return TaskCard(
          task: task,
          isSelected: isSelected,
          onTap: () {
            if (isSelected) {
              selectedTasks.value.remove(task);
            } else {
              selectedTasks.value.add(task);
            }
            // ignore: invalid_use_of_protected_member
            selectedTasks.notifyListeners();
          },
        );
      }
    );
  }
}