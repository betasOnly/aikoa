part of 'task_form_bloc.dart';

@freezed
abstract class TaskFormState with _$TaskFormState {
  const factory TaskFormState({
    @required Task task,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<TaskFailure, Unit>> saveFailureOrSuccessOption,
  }) = _TaskFormState;

  factory TaskFormState.initial() => TaskFormState(
        task: Task.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
