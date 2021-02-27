import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:Dayly/domain/notes/i_note_repository.dart';
import 'package:Dayly/domain/notes/note.dart';
import 'package:Dayly/domain/notes/note_failure.dart';

part 'note_actor_event.dart';
part 'note_actor_state.dart';
part 'note_actor_bloc.freezed.dart';

@injectable
class NoteActorBloc extends Bloc<NoteActorEvent, NoteActorState> {
  final INoteRepository _noteRepository;

  NoteActorBloc(this._noteRepository): super(NoteActorState.initial());

  @override
  Stream<NoteActorState> mapEventToState(
    NoteActorEvent event,
  ) async* {
    yield* event.map(
      selected: (e) async* {
        yield state.copyWith(
          numSelected: state.numSelected + 1,
          selected: state.selected..add(e.note),
        );
      },
      unselected: (e) async* {
        yield state.copyWith(
          numSelected: state.numSelected - 1,
          selected: state.selected..remove(e.note)
        );
      },
      unselectedAll: (e) async* {
        yield state.copyWith(numSelected: 0, selected: []);
      },
      deleted: (e) async* {
        final possibleFailure = await _noteRepository.delete(e.note);
        yield state.copyWith(
          deleteFailureOrSuccessOption: optionOf(possibleFailure)
        );
      },
      archived: (e) async* {
        final possibleFailure = await _noteRepository.archive(e.note);
        yield state.copyWith(
          archiveFailureOrSuccessOption: optionOf(possibleFailure)
        );
      },
      deletedAll: (e) async* {
        Either<NoteFailure, Unit> possibleFailure = right(unit);
        for (Note note in state.selected) {
          possibleFailure = await _noteRepository.delete(note);
        }

        yield state.copyWith(
          numSelected: 0,
          selected: [],
          deleteFailureOrSuccessOption: optionOf(possibleFailure)
        );
      },
      archivedAll: (e) async* {
        Either<NoteFailure, Unit> possibleFailure = right(unit);
        for (Note note in state.selected) {
          possibleFailure = await _noteRepository.archive(note);
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
