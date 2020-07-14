import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:enhantodo/view/todo_detail.dart';
import 'package:enhantodo/model/db.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StreamProvider<List<Todo>>(
        create: (_) => EnhanTodoDatabase().todoListStream,
        child: Consumer<List<Todo>>(
          builder: (_, List<Todo> todoList, __) => SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final itemIndex = index ~/ 2;
                if (index.isEven)
                  return ListTile(
                    title: Text(todoList[itemIndex].title),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            TodoDetail('Detail', todoList[itemIndex]),
                      ),
                    ),
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
              childCount: todoList == null ? 0 : todoList.length * 2,
            ),
          ),
        ),
      );
}
