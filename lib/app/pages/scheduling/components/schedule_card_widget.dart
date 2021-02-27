import 'package:Dayly/app/core/bloc/schedule/schedule_planner/schedule_planner_bloc.dart';
import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/domain/schedule/timebox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'schedule_card.dart';

class ScheduleCardWidget extends StatelessWidget {
  final List<TimeBox> schedule;
  const ScheduleCardWidget({Key key, this.schedule}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: BlocBuilder<SchedulePlannerBloc, SchedulePlannerState>(
        buildWhen: (p, c) => p.selected != c.selected,
        builder: (context, state) {
          final selectedIndex = state.selected.fold(
            () => -1,
            (selected) => schedule.indexOf(selected));
          return AspectRatio(
            aspectRatio: 3 / 4,
            child: Column(
              children: [
                Expanded(
                  child: selectedIndex > -1
                    ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          icon: Icon(DaylyIcons.down),
                          onPressed: selectedIndex < schedule.length - 1
                            ? () {
                              context
                                .read<SchedulePlannerBloc>()
                                .add(SchedulePlannerEvent.selected(
                                  schedule[selectedIndex+1]
                                ));
                            }: null
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          icon: Icon(DaylyIcons.up),
                          onPressed: selectedIndex > 0
                            ? () {
                              context
                                .read<SchedulePlannerBloc>()
                                .add(SchedulePlannerEvent.selected(
                                  schedule[selectedIndex-1]
                                ));
                            }: null
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          icon: Icon(DaylyIcons.add),
                          onPressed: () {
                            context
                              .read<SchedulePlannerBloc>()
                              .add(const SchedulePlannerEvent.inserted());
                          }
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          icon: Icon(DaylyIcons.delete),
                          onPressed: () {
                            context
                              .read<SchedulePlannerBloc>()
                              .add(const SchedulePlannerEvent.deleted());
                            if (selectedIndex > 0) {
                              context
                                .read<SchedulePlannerBloc>()
                                .add(SchedulePlannerEvent.selected(
                                  schedule[selectedIndex-1]
                                ));
                            } else {
                              context
                                .read<SchedulePlannerBloc>()
                                .add(SchedulePlannerEvent.selected(
                                  schedule[selectedIndex+1]
                                ));
                            }
                          }
                        ),
                      ],
                    )
                    : Container(),
                ),
                Expanded(
                  flex: 3,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ScheduleCard(
                      schedule: schedule,
                      isSelected: selectedIndex > -1
                    )
                  )
                ),
              ],
            )
          );
        }
      )
    );
  }
}