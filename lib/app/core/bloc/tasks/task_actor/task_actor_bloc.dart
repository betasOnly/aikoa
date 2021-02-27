import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:Dayly/domain/tasks/i_task_repository.dart';
import 'package:Dayly/domain/tasks/task.dart';
import 'package:Dayly/domain/tasks/task_failure.dart';

part 'task_actor_event.dart';
part 'task_actor_state.dart';
part 'task_actor_bloc.freezed.dart';

@injectable
class TaskActorBloc extends Bloc<TaskActorEvent, TaskActorState> {
  final ITaskRepository _taskRepository;

  TaskActorBloc(this._taskRepository): super(TaskActorState.initial());

  @override
  Stream<TaskActorState> mapEventToState(
    TaskActorEvent event,
  ) async* {
    yield* event.map(
      selected: (e) async* {
        yield state.copyWith(
          numSelected: state.numSelected + 1,
          selected: state.selected..add(e.task),
        );
      },
      unselected: (e) async* {
        yield state.copyWith(
          numSelected: state.numSelected - 1,
          selected: state.selected..remove(e.task)
        );
      },
      unselectedAll: (e) async* {
        yield state.copyWith(numSelected: 0, selected: []);
      },
      deleted: (e) async* {
        final possibleFailure = await _taskRepository.delete(e.task);
        yield state.copyWith(
          deleteFailureOrSuccessOption: optionOf(possibleFailure)
        );
      },
      archived: (e) async* {
        final possibleFailure = await _taskRepository.archive(e.task);
        yield state.copyWith(
          archiveFailureOrSuccessOption: optionOf(possibleFailure)
        );
      },
      deletedAll: (e) async* {
        Either<TaskFailure, Unit> possibleFailure = right(unit);
        for (Task task in state.selected) {
          possibleFailure = await _taskRepository.delete(task);
        }

        yield state.copyWith(
          numSelected: 0,
          selected: [],
          deleteFailureOrSuccessOption: optionOf(possibleFailure)
        );
      },
      archivedAll: (e) async* {
        Either<TaskFailure, Unit> possibleFailure = right(unit);
        for (Task task in state.selected) {
          possibleFailure = await _taskRepository.archive(task);
        }
        yield state.copyWith(
          numSelected: 0,
          selected: [],
          archiveFailureOrSuccessOption: optionOf(possibleFailure)
        );
      },
    );
  }
}
