part of 'event_form_bloc.dart';

@freezed
abstract class EventFormEvent with _$EventFormEvent {
  const factory EventFormEvent.initialized(Option<Event> initialEventOption) =
      _Initialized;
  const factory EventFormEvent.titleChanged(String titleStr) = _TitleChanged;
  const factory EventFormEvent.bodyChanged(String bodyStr) =
      _BodyChanged;
  const factory EventFormEvent.isAllDayChanged(bool isAllDay) =
      _IsAllDayChanged;
  const factory EventFormEvent.startDateChanged(DateTime date) =
      _StartDateChanged;
  const factory EventFormEvent.startTimeChanged(TimeOfDay start) =
      _StartTimeChanged;
  const factory EventFormEvent.endDateChanged(DateTime date) =
      _EndDateChanged;
  const factory EventFormEvent.endTimeChanged(TimeOfDay end) =
      _EndTimeChanged;
  const factory EventFormEvent.reminderAdded(Reminder reminder) =
      _ReminderAdded;
  const factory EventFormEvent.reminderRemoved(Reminder reminder) =
      _ReminderRemoved;
  const factory EventFormEvent.saved() = _Saved;
}