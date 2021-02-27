import 'package:flutter/material.dart';

import 'package:Dayly/domain/notes/note.dart';

import 'base_card.dart';

class NoteCard extends StatelessWidget {
  final Note note;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final bool isSelected;
  const NoteCard({
    Key key,
    @required this.note,
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
          note.tag.fold(
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
            note.title.getOrCrash(),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle1
          ),
        ],
      ),
    );
  }
}