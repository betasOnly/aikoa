import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'package:Dayly/domain/tags/tag.dart';
import 'package:Dayly/domain/tasks/task.dart';
import 'package:Dayly/domain/tasks/task_failure.dart';
import 'package:Dayly/domain/tasks/i_task_repository.dart';

part 'task_watcher_state.dart';
part 'task_watcher_cubit.freezed.dart';

@injectable
class TaskWatcherCubit extends Cubit<TaskWatcherState> {
  final ITaskRepository _taskRepository;

  StreamController<String> titleSearch;
  StreamController<List<Tag>> tagsFilter;

  TaskWatcherCubit(this._taskRepository) : super(TaskWatcherState.initial()) {
    titleSearch = StreamController<String>()..add('');
    tagsFilter = StreamController<List<Tag>>()..add([]);
  }

  Future<void> watchAll() async {
    emit(TaskWatcherState.loadInProgress());
    Rx.combineLatest3<
      Either<TaskFailure,UnmodifiableListView<Task>>, String, List<Tag>,
      Either<TaskFailure,UnmodifiableListView<Task>>>(
        _taskRepository.watchAll(), titleSearch.stream, tagsFilter.stream,
        (failureOrTasks, titleQuery, tags) {
          return failureOrTasks.map(
            (tasks) {
              final filtered = UnmodifiableListView<Task>(
                tasks
                  .where((task) {
                    final hasTag = tags.contains(task.tag.getOrElse(() => null));
                    return tags.isEmpty || hasTag;
                  })
                  .where((task) {
                    final title = task.title.getOrCrash().toLowerCase();
                    return title.contains(titleQuery.toLowerCase());
                  })
              );
              return filtered;
            }
          );
        }
      ).listen((failureOrTasks) { 
        // This emit fixes a bug where bloc is not updating on tag change
        emit(TaskWatcherState.loadInProgress());
        failureOrTasks.fold(
          (failure) => emit(TaskWatcherState.loadFailure(failure)),
          (tasks) {
            emit(TaskWatcherState.loadSuccess(tasks));
          }
        );
      });
  }

  searchTitle(String title) {
    titleSearch.add(title);
  }

  filterTags(List<Tag> tags) async {
    tagsFilter.add(tags);
  }
}
