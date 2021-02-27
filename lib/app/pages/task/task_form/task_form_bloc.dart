import 'dart:async';

import 'package:Dayly/domain/tags/tag.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/contents/i_content_repository.dart';
import 'package:Dayly/domain/tasks/i_task_repository.dart';
import 'package:Dayly/domain/tasks/task.dart';
import 'package:Dayly/domain/tasks/task_failure.dart';

part 'task_form_event.dart';
part 'task_form_state.dart';
part 'task_form_bloc.freezed.dart';

@injectable
class TaskFormBloc extends Bloc<TaskFormEvent, TaskFormState> {
  final ITaskRepository _taskRepository;
  final IContentRepository _contentRepository;

  TaskFormBloc(this._taskRepository, this._contentRepository)
      : super(TaskFormState.initial());

  @override
  Stream<TaskFormState> mapEventToState(
    TaskFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield await e.initialTaskOption.fold(
          () async {
            final failureOrId = await _contentRepository.create();
            return failureOrId.fold(
              (_) => state, 
              (uid) => state.copyWith(
                task: state.task.copyWith(child: some(uid)))
            );
          },
          (initialTask) {
            return state.copyWith(
              task: initialTask,
              isEditing: true,
            );
          },
        );
      },
      titleChanged: (e) async* {
        yield state.copyWith(
          task: state.task.copyWith(title: CardTitle(e.titleStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      tagChanged: (e) async* {
        yield state.copyWith(
          task: state.task.copyWith(tag: some(e.tag)),
          saveFailureOrSuccessOption: none(),
        );
      },
      deadlineChanged: (e) async* {
        yield state.copyWith(
          task: state.task.copyWith(deadline: some(Deadline(e.deadline))),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<TaskFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.task.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _taskRepository.update(state.task)
              : await _taskRepository.create(state.task);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
