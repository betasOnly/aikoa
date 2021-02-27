import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:Dayly/domain/core/value_objects.dart';
import 'package:Dayly/domain/core/extensions.dart';
import 'package:Dayly/domain/schedule/i_schedule_repository.dart';
import 'package:Dayly/domain/schedule/schedule_failure.dart';
import 'package:Dayly/domain/schedule/timebox.dart';

part 'schedule_planner_event.dart';
part 'schedule_planner_state.dart';
part 'schedule_planner_bloc.freezed.dart';

@injectable
class SchedulePlannerBloc extends Bloc<SchedulePlannerEvent, SchedulePlannerState> {
  final IScheduleRepository _scheduleRepository;

  SchedulePlannerBloc(this._scheduleRepository)
      : super(SchedulePlannerState.initial());

  @override
  Stream<SchedulePlannerState> mapEventToState(
    SchedulePlannerEvent event,
  ) async* {
    yield* event.map(
      unselected: (e) async* {
       yield SchedulePlannerState.initial();
      },
      selected: (e) async* {
        yield await e.timebox.timeSlot.fold(
          (_) async {
            final timebox = e.timebox.copyWith(
              timeSlot: right(TimeSlot.next(
                e.timebox.end?? e.timebox.start.toDate().add(Duration(hours: 10))
              ))
            );
            final possibleFailure = await _scheduleRepository.update(timebox);
            return state.copyWith(
              selected: some(timebox),
              scheduleFailureOrSuccessOption: optionOf(possibleFailure)
            );
          },
          (_) => state.copyWith(selected: some(e.timebox)));
      },
      added: (e) async* {
        final possibleFailure = (await _scheduleRepository.create(e.timebox))
          .map<Unit>((r) => unit);
        yield state.copyWith(
          scheduleFailureOrSuccessOption: optionOf(possibleFailure)
        );
      },
      updated: (e) async* {
        final possibleFailure = await _scheduleRepository.update(e.timebox);
        yield state.copyWith(
          selected: some(e.timebox),
          scheduleFailureOrSuccessOption: optionOf(possibleFailure)
        );
      },
      deleted: (e) async* {
        final possibleFailure = await _scheduleRepository.delete(
          state.selected.getOrElse(() => null));
        yield state.copyWith(
          selected: none(),
          scheduleFailureOrSuccessOption: optionOf(possibleFailure)
        );
      },
      inserted: (e) async* {
        yield await state.selected.fold(
          () => state,
          (item) async {
            final timebox = item.copyWith(
              timeSlot: right(TimeSlot.next(item.end)));
            final possibleFailure = await _scheduleRepository.create(timebox);
            return possibleFailure.fold(
              (failure) => state.copyWith(
                scheduleFailureOrSuccessOption: some(left(failure))
              ),
              (uid) => state.copyWith(
                selected: some(timebox.copyWith(id: uid)),
                scheduleFailureOrSuccessOption: some(right(unit))
              ),
            );
          }
        );
      },
      meridiemSwitched: (e) async* {
        yield await state.selected.fold(
          () => state,
          (item) async {
            final timebox = item.copyWith(
              // TODO: move logic
              timeSlot: item.timeSlot.map(
                (timeSlot) {
                  final start = timeSlot.start;
                  final hour = (start.hour + 12) % 24;
                  final duration = timeSlot.end.difference(timeSlot.start);
                  final newStart = DateTime(
                    start.year, start.month, start.day, hour, start.minute);
                  return TimeSlot(newStart, newStart.add(duration));
                }
              )
            );
            final possibleFailure = await _scheduleRepository.update(timebox);
            return state.copyWith(
              selected: some(timebox),
              scheduleFailureOrSuccessOption: optionOf(possibleFailure)
            );
          }
        );
      }
    );
  }
}
