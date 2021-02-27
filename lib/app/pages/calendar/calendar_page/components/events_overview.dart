import 'dart:math';

import 'package:Dayly/app/core/bloc/calendar/event_watcher/event_watcher_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'package:Dayly/domain/calendar/calendar.dart';
import 'package:Dayly/domain/core/extensions.dart';

import 'event_card.dart';

class EventsOverview extends StatefulWidget {
  EventsOverview({Key key}) : super(key: key);

  @override
  _EventsOverviewState createState() => _EventsOverviewState();
}

class _EventsOverviewState extends State<EventsOverview> {
  AutoScrollController _controller;
  List<DateTime> days;

  @override
  void initState() { 
    super.initState();
    _controller = AutoScrollController(
      viewportBoundaryGetter: () => Rect.fromLTRB(
        0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: Axis.vertical
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<DateTime> _getDays(List<Event> events) {
    return events.map<DateTime>((e) => e.start.toDate())
      .toSet().toList()
      ..sort((a, b) => a.difference(b).inDays);
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventWatcherCubit, EventWatcherState>(
      buildWhen: (p, c) => p != c,
      builder: (context, state) {
        return state.maybeMap(
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            final days = _getDays(state.events);
            return CustomScrollView(
              controller: _controller,
              slivers: [
                for (DateTime day in days) _buildDay(
                  index: days.indexOf(day),
                  day: day,
                  events: state.events.where((event) => event.timeSlot.isAt(day))
                    .toList()..sort((a, b) => a.start.difference(b.start).inMinutes)
                ),
              ],
            );
          },
          orElse: () => Container(),
        );
      }
    );
  }

  Widget _buildDay({int index, DateTime day, List<Event> events}) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      sliver: SliverStickyHeader(
        overlapsContent: true,
        header: IgnorePointer(
          child: AutoScrollTag(
            controller: _controller,
            key: ValueKey(index),
            index: index,
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 56,
                child: DateWidget(date: day)
              ),
            ),
          ),
        ),
        sliver: SliverPadding(
          padding: const EdgeInsets.only(left: 64),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              events.map<Widget>((event) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: EventCard(event: event),
              )).toList()
            )
          ),
        )
      ),
    );
  }
}

class DateWidget extends StatelessWidget {
  final DateTime date;
  const DateWidget({Key key, @required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            DateFormat("MMM").format(date).toUpperCase(),
            style: Theme.of(context).textTheme.caption
          ),
          SizedBox(height: 2,),
          Text(
            date.day.toString(),
            style: Theme.of(context).textTheme.headline5
          ),
          Text(
            DateFormat("E").format(date).toUpperCase(),
            style: Theme.of(context).textTheme.caption
          )
        ],
      ),
    );
  }
}


class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => max(maxHeight, minHeight);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }
  
  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
      minHeight != oldDelegate.minHeight ||
      child != oldDelegate.child;
  }
}