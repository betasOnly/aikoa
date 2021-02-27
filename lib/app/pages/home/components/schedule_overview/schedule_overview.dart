import 'package:flutter/material.dart';

import 'focus_widget.dart';
import 'horizontal_schedule.dart';

class ScheduleOverview extends StatelessWidget {
  static final scheduleKey = GlobalKey();
  static final focusKey = GlobalKey();
  const ScheduleOverview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: HorizontalSchedule(key: scheduleKey,),
          )
        ),
        SizedBox(height: 16,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FocusWidget(key: focusKey),
          ),
        ),
      ],
    );
  }
}
