part of 'event_form_bloc.dart';

@freezed
abstract class EventFormState with _$EventFormState {
  const factory EventFormState({
    @required Event event,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<CalendarFailure, Unit>> saveFailureOrSuccessOption,
  }) = _EventFormState;

  factory EventFormState.initial() => EventFormState(
        event: Event.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}

