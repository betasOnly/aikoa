part of 'stats_today_cubit.dart';

@freezed
abstract class StatsTodayState with _$StatsTodayState {
  factory StatsTodayState.initial() = _Initial;
  factory StatsTodayState.loadSuccess(DaylyStats stats)
      = _LoadSuccess;
  factory StatsTodayState.loadFailure(StatsFailure statsFailure)
      = _LoadFailure;
  factory StatsTodayState.shutdownCompleted(DaylyStats stats)
      = _ShutdownCompleted;

  @late
  Option<DateTime> get shutdown => this.maybeMap(
    loadSuccess: (state) => state.stats.shutdownAt,
    shutdownCompleted: (state) => state.stats.shutdownAt,
    orElse: () => none()
  );
}
