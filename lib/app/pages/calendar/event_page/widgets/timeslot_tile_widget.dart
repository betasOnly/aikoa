import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/core/widgets/pickers.dart';
import 'package:Dayly/domain/calendar/calendar.dart';
import 'package:Dayly/domain/core/extensions.dart';

import '../event_form/event_form_bloc.dart';

class TimeSlotTile extends StatelessWidget {
  static const paddingWithoutIcon = const EdgeInsets.only(left: 72, right: 16);
  const TimeSlotTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFormBloc, EventFormState>(
      buildWhen: (p, c) => p.event.timeSlot != c.event.timeSlot
          || p.event.isAllDay != c.event.isAllDay,
      builder: (context, state) {
        return Column(
          children: [
            ListTile(
              leading: Icon(DaylyIcons.time),
              title: Text('All-day'),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Switch(
                  activeColor: Theme.of(context).colorScheme.secondary,
                  value: state.event.isAllDay,
                  onChanged: (bool value) {
                    context
                      .read<EventFormBloc>()
                      .add(EventFormEvent.isAllDayChanged(value));
                  },
                ),
              ),
            ),
            ListTile(
              contentPadding: paddingWithoutIcon,
              title: Text(state.event.start.dateText()),
              onTap: () {
                FocusScope.of(context).unfocus();
                openDatePicker(
                  context: context,
                  initialDate: state.event.start,
                  onSave: (date) {
                    context
                      .read<EventFormBloc>()
                      .add(EventFormEvent.startDateChanged(date));
                  }
                );
              },
              trailing: !state.event.isAllDay
                ? TimeButton(
                  date: state.event.start,
                  onChange: (time) {
                    context
                      .read<EventFormBloc>()
                      .add(EventFormEvent.startTimeChanged(time));
                  }
                )
                : null
            ),
            ListTile(
              contentPadding: paddingWithoutIcon,
              title: Text(state.event.end.dateText()),
              onTap: () {
                FocusScope.of(context).unfocus();
                openDatePicker(
                  context: context,
                  initialDate: state.event.end,
                  firstDate: state.event.start,
                  onSave: (date) {
                    context
                      .read<EventFormBloc>()
                      .add(EventFormEvent.endDateChanged(date));
                  }
                );
              },
              trailing: !state.event.isAllDay
                ? TimeButton(
                  date: state.event.end,
                  onChange: (time) {
                    FocusScope.of(context).unfocus();
                    context
                      .read<EventFormBloc>()
                      .add(EventFormEvent.endTimeChanged(time));
                  }
                )
                : null
            ),
          ]
        );
      }
    );
  }
}

class TimeButton extends StatelessWidget {
  final DateTime date;
  final ValueChanged<TimeOfDay> onChange;
  const TimeButton({Key key, @required this.date, this.onChange})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        date.timeText(),
        style: Theme.of(context).textTheme.bodyText1
          .copyWith(fontFeatures: [FontFeature.tabularFigures()]),
      ),
      onPressed: () {
        FocusScope.of(context).unfocus();
        openTimePicker(
          context: context,
          initialTime: TimeOfDay(hour: date.hour, minute: date.minute),
          onSave: onChange
        );
      }
    );
  }
}