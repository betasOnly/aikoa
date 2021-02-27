import 'package:Dayly/app/core/bloc/schedule/focus/focus_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:Dayly/app/core/bloc/schedule/schedule_watcher/schedule_watcher_cubit.dart';
import 'package:Dayly/app/core/bloc/stats/stats_today/stats_today_cubit.dart';

import 'event_card.dart';
import 'shutdown_button.dart';
import 'timebox_card.dart';

class HorizontalSchedule extends StatefulWidget {
  const HorizontalSchedule({Key key}) : super(key: key);

  @override
  _HorizontalScheduleState createState() => _HorizontalScheduleState();
}

class _HorizontalScheduleState extends State<HorizontalSchedule> {
  final itemScrollController = ItemScrollController();
  final itemPositionsListener = ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleWatcherCubit, ScheduleWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (state) => ScrollablePositionedList.builder(
            itemScrollController: itemScrollController,
            itemPositionsListener: itemPositionsListener,
            padding: EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: state.schedule.length + 1,
            initialAlignment: 1,
            itemBuilder: (context, index) {
              if (index < state.schedule.length) {
                return Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: BlocBuilder<StatsTodayCubit,StatsTodayState>(
                    buildWhen: (p, c) => p.shutdown != c.shutdown,
                    builder: (context, shutdown) {
                      return Opacity(
                        opacity: shutdown.maybeMap(
                          shutdownCompleted: (_) => 0.6,
                          orElse: () => 1.0
                        ),
                        child: state.schedule[index].fold(
                          (event) => EventCard(event: event),
                          (timebox) => BlocBuilder<FocusBloc,FocusState>(
                            // Only dismissible widget if no event is focused
                            builder: (context, focus) => focus.maybeMap(
                              isEvent: (_) => TimeBoxCard(timebox: timebox,),
                              orElse: () => Dismissible(
                                key: ValueKey(timebox.id),
                                direction: DismissDirection.down,
                                onDismissed: (direction) {
                                  context
                                    .read<FocusBloc>()
                                    .add(FocusEvent.focusedOn(timebox));
                                },
                                child: TimeBoxCard(timebox: timebox,),
                              ),
                            ),
                          )
                        )
                      );
                    }
                  )
                );
              } else {
                return Padding(
                  padding:  EdgeInsets.only(left: 8, top: 4, bottom: 4),
                  child: ShutdownButton(),
                );
              }
            }
          ),
          orElse: () => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ShutdownButton()
              ],
            ),
          ),
        );
      },
    );
  }
}