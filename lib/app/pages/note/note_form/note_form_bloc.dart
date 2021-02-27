import 'dart:async';

import 'package:Dayly/domain/tags/tag.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/contents/i_content_repository.dart';
import 'package:Dayly/domain/notes/i_note_repository.dart';
import 'package:Dayly/domain/notes/note.dart';
import 'package:Dayly/domain/notes/note_failure.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _noteRepository;
  final IContentRepository _contentRepository;

  NoteFormBloc(this._noteRepository, this._contentRepository)
      : super(NoteFormState.initial());

  @override
  Stream<NoteFormState> mapEventToState(
    NoteFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield await e.initialNoteOption.fold(
          () async {
            final failureOrId = await _contentRepository.create();
            return failureOrId.fold(
              (_) => state, 
              (uid) => state.copyWith(
                note: state.note.copyWith(child: some(uid)))
            );
          },
          (initialNote) {
            return state.copyWith(
              note: initialNote,
              isEditing: true,
            );
          },
        );
      },
      titleChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(title: CardTitle(e.titleStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      tagChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(tag: some(e.tag)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<NoteFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.note.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _noteRepository.update(state.note)
              : await _noteRepository.create(state.note);
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
