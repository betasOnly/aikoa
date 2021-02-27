import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CustomGridView extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  const CustomGridView({
    Key key,
    @required this.itemCount,
    @required this.itemBuilder
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(16),
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      staggeredTileBuilder: (int index) => StaggeredTile.fit(1)
    );
  }
}