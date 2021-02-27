import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:Dayly/domain/core/extensions.dart';
import 'package:Dayly/domain/calendar/calendar.dart';
import 'package:Dayly/domain/calendar/calendar_failure.dart';
import 'package:Dayly/domain/calendar/i_calendar_repository.dart';

part 'event_watcher_state.dart';
part 'event_watcher_cubit.freezed.dart';

@injectable
class EventWatcherCubit extends Cubit<EventWatcherState> {
  final ICalendarRepository _calendarRepository;
  EventWatcherCubit(this._calendarRepository)
      : super(EventWatcherState.initial());


  Future<void> watchUntil(Duration duration) async {
    final now = DateTime.now();
    watch(now, now.add(duration));
  }

  Future<void> watchMonth(DateTime from) async {
    final nextMonth = DateTime(from.year, from.month, 1).add(Duration(days: 31));
    watch(from, DateTime(nextMonth.year, nextMonth.month, 1));
  }

  Future<void> watchWeek(DateTime from) async {
    watch(from, from.add(Duration(days: 7)));
  }

  Future<void> watchUpcoming(int n) async {
    final tomorrow = DateTime.now().toDate().add(Duration(days: 1));
     emit(const EventWatcherState.loadInProgress());
    _calendarRepository.watchEvents(tomorrow, tomorrow.add(Duration(days: 7)))
      .listen(
        (failureOrEvents) => failureOrEvents.fold(
          (failure) => emit(EventWatcherState.loadFailure(failure)),
          (events) {
            emit(EventWatcherState.loadSuccess(
              UnmodifiableListView(events.sublist(0, min(n, events.length)))
            ));
          }
        )
      );
  }

  Future<void> watch(DateTime from, DateTime to) async {
    emit(const EventWatcherState.loadInProgress());
    _calendarRepository.watchEvents(from, to).listen(
      (failureOrEvents) => failureOrEvents.fold(
        (failure) => emit(EventWatcherState.loadFailure(failure)),
        (events) => emit(EventWatcherState.loadSuccess(events))
      )
    );
  }
}
