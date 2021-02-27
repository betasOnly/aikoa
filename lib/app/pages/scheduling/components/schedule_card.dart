import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/core/bloc/schedule/schedule_planner/schedule_planner_bloc.dart';
import 'package:Dayly/app/core/widgets/base_card.dart';
import 'package:Dayly/domain/schedule/timebox.dart';
import 'package:Dayly/domain/tasks/task.dart';

class ScheduleCard extends StatelessWidget {
  final List<TimeBox> schedule;
  final bool isSelected;
  const ScheduleCard({Key key, this.schedule, this.isSelected=false})
    : super(key: key);

  Task get task => schedule.first.task;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      onTap: () {
        context
          .read<SchedulePlannerBloc>()
          .add(SchedulePlannerEvent.selected(schedule.first));
      },
      hideSelectedIcon: true,
      isSelected: isSelected,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              task.tag.fold(
                () => '',
                (tag) => tag.name.getOrCrash(),
              ),
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.overline,
            ),
          ),
          Text(
            task.title.getOrCrash(),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle1
          ),
          Spacer(),
          for (TimeBox timebox in schedule) Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              timebox.timeSlot.fold(
                (_) => '',
                (slot) => slot.toText()
              ),
              style: Theme.of(context).textTheme.overline
            ),
          ),
        ],
      ),
    );
  }
}