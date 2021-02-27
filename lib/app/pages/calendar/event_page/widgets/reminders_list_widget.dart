import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/core/widgets/placeholders.dart';
import 'package:Dayly/app/pages/calendar/event_page/event_form/event_form_bloc.dart';
import 'package:Dayly/domain/calendar/reminder.dart';
import 'package:Dayly/domain/calendar/value_objects.dart';
import 'package:Dayly/domain/core/value_objects.dart';

class RemindersList extends StatefulWidget {
  const RemindersList({Key key}) : super(key: key);

  @override
  _RemindersListState createState() => _RemindersListState();
}

class _RemindersListState extends State<RemindersList> {
  final TextEditingController _textEditingController = TextEditingController();
  final ValueNotifier<Set<Reminder>> remindersNotifier = ValueNotifier({});

  @override
  void dispose() { 
    _textEditingController.dispose();
    remindersNotifier.dispose();
    super.dispose();
  }

  Future<Reminder> _showReminderDialog() => showDialog<Reminder>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('Set reminder'),
        content: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _textEditingController,
                autofocus: true,
                maxLength: 3,
                textInputAction: TextInputAction.done,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                textAlign: TextAlign.right,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  counterText: ''
                ),
                onSubmitted: (value) {
                  if (value.isNotEmpty) {
                    Navigator.of(context).pop(Reminder(
                      id: UniqueId(),
                      minutes: MinutesBefore(int.parse(value))));
                    _textEditingController.clear();
                  } else {
                    Navigator.of(context).pop();
                  }
                },
              ),
            ),
            SizedBox(width: 16,),
            Expanded(
              flex: 2,
              child: Text('minutes before')
            )
          ],
        ),
        actions: [
          FlatButton(
            child: Text('Done'),
            onPressed: () {
              if (_textEditingController.text.isNotEmpty) {
                Navigator.of(context).pop(Reminder(
                  id: UniqueId(),
                  minutes: MinutesBefore(
                    int.parse(_textEditingController.text))
                ));
                _textEditingController.clear();
              } else {
                Navigator.of(context).pop();
              }
            }
          )
        ],
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return BlocListener<EventFormBloc, EventFormState>(
      listenWhen: (p, c) => p.event.reminders != c.event.reminders,
      listener: (context, state) => state.event.reminders.fold(
        () {
          remindersNotifier.value = {};
          remindersNotifier.notifyListeners();
        },
        (reminders) {
          remindersNotifier.value = reminders.toSet();
          remindersNotifier.notifyListeners();
        }
      ),
      child: ValueListenableBuilder(
        valueListenable: remindersNotifier,
        builder: (context, reminders, _) {
          return Column(
            children: [
              for (Reminder reminder in reminders) ListTile(
                leading: reminders.first == reminder
                  ? Icon(DaylyIcons.reminder)
                  : SizedBox(width: 24,),
                title: Text(reminder.asText(), maxLines: null),
                trailing: IconButton(
                  icon: Icon(DaylyIcons.clear),
                  onPressed: () {
                    context
                      .read<EventFormBloc>()
                      .add(EventFormEvent.reminderRemoved(reminder));
                    remindersNotifier.value.remove(reminder);
                    remindersNotifier.notifyListeners();
                  },
                ),
              ),
               ListTile(
                leading: reminders.isEmpty
                  ? Icon(DaylyIcons.reminder)
                  : SizedBox(width: 24,),
                title: PlaceholderText('Add reminder'),
                onTap: () {
                  _showReminderDialog().then((reminder) async {
                    if (reminder != null) {
                      context
                        .read<EventFormBloc>()
                        .add(EventFormEvent.reminderAdded(reminder));
                      remindersNotifier.value.add(reminder);
                      remindersNotifier.notifyListeners();
                    }
                  });
                }
              )
            ],
          );
        }
      )
    );
  }
}