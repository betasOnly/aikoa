import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/pages/shutdown/shutdown_page.dart';
import 'package:Dayly/app/core/bloc/stats/stats_today/stats_today_cubit.dart';
import 'package:Dayly/app/core/bloc/schedule/focus/focus_bloc.dart';
import 'package:Dayly/app/core/bloc/schedule/schedule_watcher/schedule_watcher_cubit.dart';

class ShutdownButton extends StatelessWidget {
  const ShutdownButton({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.55,
      child: BlocConsumer<StatsTodayCubit, StatsTodayState>(
        listenWhen: (p, c) => p.shutdown != c.shutdown,
        listener: (context, state) {
          state.maybeMap(
            shutdownCompleted: (_) {
              BlocProvider.of<ScheduleWatcherCubit>(context).watchTomorrow();
            },
            orElse: () {
              BlocProvider.of<ScheduleWatcherCubit>(context).watchUncompleted();
            },
          );
        },
        buildWhen: (p, c) => p.shutdown != c.shutdown,
        builder: (context, state) => state.maybeMap(
          shutdownCompleted: (state) {
            return _buildButton(context, Icon(DaylyIcons.undo), () {});
          },
          orElse: () {
            return _buildButton(context, Icon(DaylyIcons.shutdown), () {
              Navigator.of(context).push(ShutdownPage());
            });
          }
        )
      ),
    );
  }

  Widget _buildButton(BuildContext context, Icon icon, VoidCallback onPressed) {
      return MaterialButton(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        color: Theme.of(context).colorScheme.surface,
        child: icon,
        onPressed: () {
          context.read<FocusBloc>().add(const FocusEvent.unfocus());
          context.read<StatsTodayCubit>().shutdown();
          onPressed();
        }
      );
  }
}