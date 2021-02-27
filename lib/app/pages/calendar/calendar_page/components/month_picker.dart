import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:Dayly/domain/core/extensions.dart';

class HorizontalMonthPicker extends StatefulWidget {
  final DateTime startDate;
  final DateTime endDate;
  final ValueChanged<DateTime> onSelected;
  HorizontalMonthPicker({
    Key key,
    @required this.startDate,
    @required this.endDate,
    @required this.onSelected,
  }): assert(
        !startDate.isAfter(endDate),
        'endDate must be on or after startDate',
      ),
      super(key: key);

  @override
  _HorizontalMonthPickerState createState() => _HorizontalMonthPickerState();
}

class _HorizontalMonthPickerState extends State<HorizontalMonthPicker> {
  final ItemScrollController _controllerMonth = ItemScrollController();
  final DateFormat _monthFormat = DateFormat.MMMM();
  final DateFormat _yearFormat = DateFormat.y();

  final ValueNotifier<int> _monthSelectedIndex = ValueNotifier(0);

  List<DateTime> _months = [];

  @override
  void initState() {
    super.initState();
    DateTime date = DateTime.now().toDate();
    _months.clear();
    while (date.isBefore(widget.endDate)) {
      _months.add(date);
      date = DateTime(date.year, date.month + 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      initialScrollIndex: _monthSelectedIndex.value,
      itemScrollController: _controllerMonth,
      scrollDirection: Axis.horizontal,
      itemCount: _months.length,
      padding: const EdgeInsets.only(right: 16),
      itemBuilder: (BuildContext context, int index) {
        final currentDate = _months[index];
        return Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              if (widget.startDate.year != currentDate.year &&
                  currentDate.month == 1)
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14.0, vertical: 5.0),
                      child: Text(
                        _yearFormat.format(currentDate),
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ValueListenableBuilder(
                valueListenable: _monthSelectedIndex,
                builder: (context, selected, _) {
                  return MonthName(
                    isSelected: selected == index,
                    name: _monthFormat.format(currentDate),
                    onTap: () async {
                      await _goToActualMonth(index);
                    }
                  );
                }
              ),
            ],
          ),
        );
      },
    );
  }

  Future _goToActualMonth(int index) async {
    _monthSelectedIndex.value = index;
    await _moveToMonthIndex(index);
    widget.onSelected(_months[index]);
  }

  Future<void> _moveToMonthIndex(int index) {
    return _controllerMonth.scrollTo(
      index: index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }
}

class MonthName extends StatelessWidget {
  final String name;
  final Function onTap;
  final bool isSelected;

  MonthName({this.name, this.onTap, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        name.toUpperCase(),
        style: TextStyle(
          fontSize: 14,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.w300,
        ),
      ),
    );
  }
}