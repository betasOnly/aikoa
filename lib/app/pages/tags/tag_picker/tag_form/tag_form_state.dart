part of 'tag_form_bloc.dart';

@freezed
abstract class TagFormState with _$TagFormState {
  const factory TagFormState({
    @required Tag tag,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<TagFailure, Unit>> saveFailureOrSuccessOption,
  }) = _TagFormState;

  factory TagFormState.initial() => TagFormState(
        tag: Tag.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}

