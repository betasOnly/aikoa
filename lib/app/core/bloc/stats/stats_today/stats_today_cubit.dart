import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:Dayly/domain/stats/dayly_stats.dart';
import 'package:Dayly/domain/stats/i_stats_repository.dart';
import 'package:Dayly/domain/stats/stats_failure.dart';

part 'stats_today_state.dart';
part 'stats_today_cubit.freezed.dart';

@injectable
class StatsTodayCubit extends Cubit<StatsTodayState> {
  final IStatsRepository _statsRepository;

  StatsTodayCubit(this._statsRepository) : super(StatsTodayState.initial());

  Future<void> initialize() async {
    _statsRepository.watchToday().listen((failureOrStats) {
      emit(failureOrStats.fold(
        (failure) => StatsTodayState.loadFailure(failure),
        (stats) => stats.shutdownAt.fold(
          () => StatsTodayState.loadSuccess(stats),
          (_) => StatsTodayState.shutdownCompleted(stats)
        )
      ));
    });
    await _statsRepository.create();
  }

  Future<void> shutdown() async {
    state.maybeMap(
      loadSuccess: (state) async {
        await _statsRepository.update(
          state.stats.copyWith(shutdownAt: some(DateTime.now()))
        );
      },
      shutdownCompleted: (state) async {
        await _statsRepository.update(state.stats.copyWith(shutdownAt: none()));
      },
      orElse: () {}
    );
  }
}
