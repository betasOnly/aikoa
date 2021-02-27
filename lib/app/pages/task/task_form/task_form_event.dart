part of 'task_form_bloc.dart';

@freezed
abstract class TaskFormEvent with _$TaskFormEvent {
  const factory TaskFormEvent.initialized(Option<Task> initialTaskOption) =
      _Initialized;
  const factory TaskFormEvent.titleChanged(String titleStr) = _TitleChanged;
  const factory TaskFormEvent.tagChanged(Tag tag) =
      _TagChanged;
  const factory TaskFormEvent.deadlineChanged(DateTime deadline) =
      _DeadlineChanged;
  const factory TaskFormEvent.saved() = _Saved;
}
