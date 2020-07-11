import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            final itemIndex = index ~/ 2;
            if (index.isEven)
              return ListTile(
                title: Text('task${itemIndex + 1}'),
              );
            else
              return Divider(
                height: 0,
                thickness: 1,
              );
          },
          semanticIndexCallback: (_, int localIndex) {
            if (localIndex.isEven) return localIndex ~/ 2;
            return null;
          },
          childCount: 50 * 2,
        ),
      );
}
