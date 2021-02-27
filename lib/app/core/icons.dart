import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class DaylyIcons {
  // Core
  static const IconData add = Icons.add;
  static const IconData search = Icons.search;
  static const IconData clear = Icons.clear;
  static const IconData delete = Icons.delete_outline;
  static const IconData close = Icons.close;
  static const IconData back = Icons.arrow_back;
  static const IconData themeMode = Icons.tonality;
  static const IconData mail = Icons.mail_outline;
  static const IconData shutdown = CommunityMaterialIcons.power_standby;
  static const IconData undo = CommunityMaterialIcons.undo_variant;
  static const IconData schedule = CommunityMaterialIcons.progress_clock;
  static const IconData focus = Icons.play_arrow;
  static const IconData selected = CommunityMaterialIcons.check_circle;
  static const IconData reminder = CommunityMaterialIcons.bell_outline;
  static const IconData up = CommunityMaterialIcons.chevron_up;
  static const IconData down = CommunityMaterialIcons.chevron_down;

  // Tasks
  static const IconData tasks = Icons.folder_open;
  static const IconData done = CommunityMaterialIcons.check;
  static const IconData deadline =
      CommunityMaterialIcons.calendar_check_outline;
  static const IconData today = CommunityMaterialIcons.calendar_today;
  static const IconData overdue = CommunityMaterialIcons.calendar_alert;
  static const IconData repeat = CommunityMaterialIcons.repeat;
  static const IconData tag = Icons.label_outline;
  static const IconData text = CommunityMaterialIcons.text;

  // Notes
  static const IconData notes = CommunityMaterialIcons.text;
  static const IconData heading1 = CommunityMaterialIcons.format_header_1;
  static const IconData heading2 = CommunityMaterialIcons.format_header_2;
  static const IconData paragraph = CommunityMaterialIcons.format_paragraph;
  static const IconData checklist = CommunityMaterialIcons.format_list_checks;

  // Projects
  static const IconData projects = CommunityMaterialIcons.lightbulb_outline;

  // Events
  static const IconData events = CommunityMaterialIcons.calendar_week;
  static const IconData time = CommunityMaterialIcons.clock_outline;
  static const IconData people = CommunityMaterialIcons.account_group_outline;
  static const IconData location = CommunityMaterialIcons.map_marker_outline;

  // Habits
  static const IconData habits = CommunityMaterialIcons.arm_flex_outline;

  // Goals
  static const IconData goals = CommunityMaterialIcons.bullseye;

  // Archive
  static const IconData archive =
      CommunityMaterialIcons.archive_arrow_down_outline;

  // Stats
  static const IconData stats = CommunityMaterialIcons.chart_arc;
}

class DaylyIcon extends StatelessWidget {
  const DaylyIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Theme.of(context).brightness == Brightness.light
            ? Image.asset('assets/icon/dayly_icon.png')
            : Image.asset('assets/icon/dayly_icon_dark.png'));
  }
}