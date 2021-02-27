import 'package:flutter/material.dart';

import 'package:Dayly/domain/tasks/task.dart';

import 'base_card.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final bool isSelected;
  const TaskCard({
    Key key,
    @required this.task,
    this.onTap,
    this.onLongPress,
    this.isSelected=false
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      isSelected: isSelected,
      onTap: onTap,
      onLongPress: onLongPress,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          task.tag.fold(
            () => SizedBox(height: 4,),
            (tag) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                tag.name.getOrCrash(),
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.overline,
              ),
            ),
          ),
          Text(
            task.title.getOrCrash(),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle1
          ),
          task.deadline.fold(
            () => SizedBox(height: 8,),
            (deadline) => Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: DefaultTextStyle.merge(
                style: Theme.of(context).textTheme.caption,
                child: Row(
                  children: <Widget>[
                    deadline.toIcon(
                      errorColor: Colors.red,
                      warningColor: Colors.yellow,
                      size: 16
                    ),
                    SizedBox(width: 4,),
                    Flexible(
                      child: Text(
                        deadline.toText(),
                        overflow: TextOverflow.ellipsis,
                      )
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}