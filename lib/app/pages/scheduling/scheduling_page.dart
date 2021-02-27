import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/router.gr.dart';
import 'package:Dayly/app/core/bloc/stats/stats_today/stats_today_cubit.dart';
import 'package:Dayly/app/core/bloc/schedule/schedule_planner/schedule_planner_bloc.dart';

import 'components/horizontal_schedule.dart';
import 'components/scheduler.dart';

class SchedulingPage extends StatefulWidget {
  static DateFormat dateFormat = DateFormat('d MMM yyyy');
  const SchedulingPage({Key key}) : super(key: key);

  @override
  _SchedulingPageState createState() => _SchedulingPageState();
}

class _SchedulingPageState extends State<SchedulingPage> {
  final scheduleKey = GlobalKey();

  @override
  void initState() { 
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<SchedulePlannerBloc>().add(SchedulePlannerEvent.unselected());
    });
  }

  void save(context) {
    ExtendedNavigator.of(context)
      .popUntil((route) =>route.settings.name == Routes.homePage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(DaylyIcons.back),
          onPressed: () => save(context)
        ),
        title: BlocBuilder<StatsTodayCubit,StatsTodayState>(
          buildWhen: (p, c) => p.shutdown != c.shutdown,
          builder: (context, state) => state.maybeMap(
            shutdownCompleted: (state) {
              return Text(
                SchedulingPage.dateFormat.format(DateTime.now().add(Duration(days: 1)))
              );
            },
            orElse: () => Text(SchedulingPage.dateFormat.format(DateTime.now()))
          )
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Scheduler(),
            SizedBox(height: 8,),
            Expanded(
              child: HorizontalSchedule(
                key: scheduleKey
              )
            )
          ],
        ),
      ),
      persistentFooterButtons: [
        FlatButton(
          child: Text('Save'),
          onPressed: () => save(context)
        ),
      ],
    );
  }
}