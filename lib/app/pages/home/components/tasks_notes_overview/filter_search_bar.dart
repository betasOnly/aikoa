import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Dayly/app/core/bloc/tags/cubit/tags_watcher_cubit.dart';
import 'package:Dayly/domain/tags/tag.dart';
import 'package:Dayly/app/core/icons.dart';

class FilterSearchBar extends StatefulWidget {
  final ValueChanged<String> onTitleChange;
  final ValueChanged<List<Tag>> onTagsChange;
  const FilterSearchBar({
    Key key,
    @required this.onTitleChange,
    @required this.onTagsChange
  }) : super(key: key);

  @override
  _FilterSearchBarState createState() => _FilterSearchBarState();
}

class _FilterSearchBarState extends State<FilterSearchBar> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final ValueNotifier<List<Tag>> _selectedNotifier = ValueNotifier([]);
  bool isSearching = false;

  @override
  void dispose() {
    _scrollController.dispose();
    _focusNode.dispose();
    _textEditingController.dispose();
    _selectedNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller: _scrollController,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 8,
          ),
          IconButton(
            icon: isSearching
              ? Icon(DaylyIcons.close)
              : Icon(DaylyIcons.search),
            splashColor: Theme.of(context).scaffoldBackgroundColor,
            highlightColor: Theme.of(context).scaffoldBackgroundColor,
            onPressed: () {
              setState(() {
                _textEditingController.clear();
                isSearching = !isSearching;
                if (isSearching) {
                  _focusNode.requestFocus();
                } else {
                  widget.onTitleChange('');
                  _focusNode.unfocus();
                }
              });
            }
          ),
          isSearching ? LimitedBox(
            maxWidth: 172,
            child: TextField(
              controller: _textEditingController,
              focusNode: _focusNode,
              autocorrect: true,
              onChanged: widget.onTitleChange,
              decoration: InputDecoration.collapsed(hintText: 'Search...'),
            ),
          )
          : SizedBox(width: 8),
          BlocBuilder<TagsWatcherCubit, TagsWatcherState>(
            builder: (context, state) => state.maybeMap(
              loadSuccess: (state) => Row(
                children: state.tags.map((tag) => _buildTag(tag)).toList()
              ),
              orElse: () => SizedBox(width: 0,)
            )
          )
        ]
      )
    );
  }

  Widget _buildTag(Tag tag) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0),
      child:  ValueListenableBuilder(
        valueListenable: _selectedNotifier,
        builder: (context, selected, _) {
          return FilterChip(
            selected: selected.contains(tag),
            backgroundColor: Theme.of(context).colorScheme.secondaryVariant
              .withOpacity(0.87),
            checkmarkColor: Theme.of(context).colorScheme.onSecondary,
            selectedColor: Theme.of(context).colorScheme.secondaryVariant,
            label: Text(tag.name.getOrCrash()),
            labelStyle: Theme.of(context).textTheme.button.copyWith(
              color: Theme.of(context).colorScheme.onSecondary
            ),
            onSelected: (bool isSelected) {
              if (isSelected) {
                _selectedNotifier.value.add(tag);
              } else {
                _selectedNotifier.value.remove(tag);
              }
              widget.onTagsChange(_selectedNotifier.value);
              _selectedNotifier.notifyListeners();
            },
          );
        }
      ),
    );
  }
}