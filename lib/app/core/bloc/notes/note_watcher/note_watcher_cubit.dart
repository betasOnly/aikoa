import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'package:Dayly/domain/notes/note.dart';
import 'package:Dayly/domain/notes/note_failure.dart';
import 'package:Dayly/domain/notes/i_note_repository.dart';
import 'package:Dayly/domain/tags/tag.dart';

part 'note_watcher_state.dart';
part 'note_watcher_cubit.freezed.dart';

@injectable
class NoteWatcherCubit extends Cubit<NoteWatcherState> {
  final INoteRepository _noteRepository;

  StreamController<String> titleSearch;
  StreamController<List<Tag>> tagsFilter;

  NoteWatcherCubit(this._noteRepository) : super(NoteWatcherState.initial()) {
    titleSearch = StreamController<String>()..add('');
    tagsFilter = StreamController<List<Tag>>()..add([]);
  }

  Future<void> watchAll() async {
    emit(NoteWatcherState.loadInProgress());
    Rx.combineLatest3<
      Either<NoteFailure,UnmodifiableListView<Note>>, String, List<Tag>,
      Either<NoteFailure,UnmodifiableListView<Note>>>(
        _noteRepository.watchAll(), titleSearch.stream, tagsFilter.stream,
        (failureOrNotes, titleQuery, tags) {
          return failureOrNotes.map(
            (notes) {
              final filtered = UnmodifiableListView<Note>(
                notes
                  .where((note) {
                    final hasTag = tags.contains(note.tag.getOrElse(() => null));
                    return tags.isEmpty || hasTag;
                  })
                  .where((note) {
                    final title = note.title.getOrCrash().toLowerCase();
                    return title.contains(titleQuery.toLowerCase());
                  })
              );
              return filtered;
            }
          );
        }
      ).listen((failureOrNotes) { 
        // This emit fixes a bug where bloc is not updating on tag change
        emit(NoteWatcherState.loadInProgress());
        failureOrNotes.fold(
          (failure) => emit(NoteWatcherState.loadFailure(failure)),
          (notes) {
            emit(NoteWatcherState.loadSuccess(notes));
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
