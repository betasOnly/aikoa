part of 'note_watcher_cubit.dart';

@freezed
abstract class NoteWatcherState with _$NoteWatcherState {
  const factory NoteWatcherState.initial() = _Initial;
  const factory NoteWatcherState.loadInProgress() = _DataTransferInProgress;
  const factory NoteWatcherState.loadSuccess(UnmodifiableListView<Note> notes) =
      _LoadSuccess;
  const factory NoteWatcherState.loadFailure(NoteFailure noteFailure) =
      _LoadFailure;
}