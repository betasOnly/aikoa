part of 'note_form_bloc.dart';

@freezed
abstract class NoteFormEvent with _$NoteFormEvent {
  const factory NoteFormEvent.initialized(Option<Note> initialNoteOption) =
      _Initialized;
  const factory NoteFormEvent.titleChanged(String titleStr) = _TitleChanged;
  const factory NoteFormEvent.tagChanged(Tag tag) =
      _TagChanged;
  const factory NoteFormEvent.saved() = _Saved;
}
