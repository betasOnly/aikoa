import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:Dayly/app/core/bloc/schedule/schedule_watcher/schedule_watcher_cubit.dart';
import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/router.gr.dart';
import 'package:Dayly/domain/schedule/timebox.dart';

import 'schedule_card_widget.dart';

class HorizontalSchedule extends StatelessWidget {
  const HorizontalSchedule({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleWatcherCubit, ScheduleWatcherState>(
      buildWhen: (p, c) => p != c,
      builder: (context, state) => state.maybeMap(
        loadSuccess: (state) {
          final schedule = state.schedule
            .where((eventOrTask) => eventOrTask.isRight())
            .map((task) => task.getOrElse(() => null));
          final grouped = groupBy(schedule, (TimeBox timebox) {
            return timebox.task;
          });
          final groupedSchedule = grouped.entries.map((e) => e.value).toList();
          return ScrollablePositionedList.builder(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
            scrollDirection: Axis.horizontal,
            itemCount: groupedSchedule.length + 1,
            itemBuilder: (context, index) {
              if (index > 0) {
                return ScheduleCardWidget(schedule: groupedSchedule[index-1]);
              } else {
                return Column(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 4, 16, 4),
                        child: AspectRatio(
                          aspectRatio: 1 / 2,
                          child: MaterialButton(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            color: Theme.of(context).colorScheme.surface,
                            child: Icon(DaylyIcons.add),
                            onPressed: () {
                              ExtendedNavigator.of(context)
                                .push(
                                  Routes.selectTasksDialog,
                                  arguments: SelectTasksDialogArguments(
                                    hideTasks: grouped.keys.toList()
                                  )
                                );
                            }
                          ),
                        ),
                      )
                    ),
                  ],
                );
              }
            }
          );
        },
        orElse: () => Container()
      )
    );
  }
}