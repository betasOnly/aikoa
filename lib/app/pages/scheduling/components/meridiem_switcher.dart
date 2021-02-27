import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/core/bloc/schedule/schedule_planner/schedule_planner_bloc.dart';
import 'package:Dayly/app/core/widgets/switch.dart';

class MeridiemSwitcher extends StatelessWidget {
  const MeridiemSwitcher({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SchedulePlannerBloc, SchedulePlannerState>(
      buildWhen: (p, c) => p.isAM != c.isAM || p.selected != c.selected,
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: state.selected.isNone(),
          child: Opacity(
            opacity: state.selected.isNone()
              ? 0.6
              : 1.0,
            child: LiteRollingSwitch(
              value: !state.isAM,
              textOn: 'PM',
              textOff: 'AM',
              colorOn: Theme.of(context).colorScheme.primary,
              colorOff: Theme.of(context).colorScheme.primary,
              iconOn: Icons.brightness_2,
              iconOff: Icons.wb_sunny,
              onChanged: (_) {
                context
                  .read<SchedulePlannerBloc>()
                  .add(const SchedulePlannerEvent.meridiemSwitched());
              }
            ),
          ),
        );
      }
    );
  }
}