import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/router.gr.dart';
import 'package:Dayly/app/core/bloc/tasks/task_actor/task_actor_bloc.dart';
import 'package:Dayly/app/core/bloc/tasks/task_watcher/task_watcher_cubit.dart';
import 'package:Dayly/app/core/widgets/custom_grid_view.dart';
import 'package:Dayly/app/core/widgets/task_card.dart';
import 'package:Dayly/domain/tasks/task.dart';

class TasksOverview extends StatelessWidget {
  TasksOverview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskWatcherCubit, TaskWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(color: Colors.green, height: 100,),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return CustomGridView(
              itemCount: state.tasks.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildCard(context, state.tasks[index]);
              },
            );
          },
          loadFailure: (state) {
            return Container(color: Colors.red, height: 100,);
          },
        );
      },
    );
  }

  Widget _buildCard(BuildContext context, Task task) {
    return BlocBuilder<TaskActorBloc, TaskActorState>(
      // buildWhen: (p, c) => p.selected.contains(task) != c.selected.contains(task),
      builder: (context, state) {
        final isSelected = state.selected.contains(task);
        return TaskCard(
          task: task,
          isSelected: isSelected,
          onTap: () {
            if (state.isSelecting) {
              if (isSelected) {
                context
                  .read<TaskActorBloc>()
                  .add(TaskActorEvent.unselected(task));
              } else {
                context
                  .read<TaskActorBloc>()
                  .add(TaskActorEvent.selected(task));
              }
            } else {
              ExtendedNavigator.of(context).push(
                Routes.taskPage,
                arguments: TaskPageArguments(task: task),
              );
            }
          },
          onLongPress: () {
            if (isSelected) {
              context
                .read<TaskActorBloc>()
                .add(TaskActorEvent.unselected(task));
            } else {
              context
                .read<TaskActorBloc>()
                .add(TaskActorEvent.selected(task));
            }
          },
        );
      }
    );
  }
}
