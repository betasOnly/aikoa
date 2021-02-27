import 'package:Dayly/domain/calendar/calendar.dart';
import 'package:Dayly/domain/calendar/calendar_failure.dart';
import 'package:Dayly/domain/calendar/i_calendar_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'calendar_manager_state.dart';
part 'calendar_manager_cubit.freezed.dart';

@injectable
class CalendarManagerCubit extends Cubit<CalendarManagerState> {
  final ICalendarRepository _calendarRepository;
  CalendarManagerCubit(this._calendarRepository)
    : super(CalendarManagerState.initial());

  Future<void> connect() async {
    final failureOrCalendar = await _calendarRepository.calendar;
    failureOrCalendar.fold(
      (failure) => emit(state.copyWith(
        connected: none(),
        failureOrSuccessOption: some(left(failure)))),
      (calendar) => emit(state.copyWith(
        connected: some(calendar),
        failureOrSuccessOption: some(right(unit)))),
    );
  }

  Future<void> listCalendars() async {
    _calendarRepository.watchCalendars().listen(
      (failureOrCalendars) => failureOrCalendars.fold(
        (failure) => emit(state.copyWith(
          failureOrSuccessOption: some(left(failure)))),
        (calendars) => emit(state.copyWith(
          calendars: some(calendars),
          failureOrSuccessOption: some(right(unit)))),
      )
    );
  }

  Future<void> setCalendar(Calendar calendar) async {
    final failureOrSuccess = await _calendarRepository.setCalendar(calendar);
    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(
        connected: none(),
        failureOrSuccessOption: some(left(failure)))),
      (success) => emit(state.copyWith(
        connected: some(calendar),
        failureOrSuccessOption: some(right(unit)))),
    );
  }
}
