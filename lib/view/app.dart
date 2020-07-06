import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:enhantodo/viewmodel/app_viewmodel.dart';
import 'package:enhantodo/view/todo_list.dart';

class EnhanTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'EnhanTodo',
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.green,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blueGrey[800],
          accentColor: Colors.green,
        ),
        home: ChangeNotifierProvider(
          create: (_) => EnhanTodoViewModel(TodoList()),
          child: Scaffold(
            body: _ScrollWidget(),
            drawer: _DrawerWidget(),
          ),
        ),
      );
}

class _ScrollWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('EnhanTodo'),
            ),
            stretch: false,
            floating: true,
            pinned: false,
            snap: false,
          ),
          Consumer(
            builder: (_, EnhanTodoViewModel viewModel, __) => viewModel.sliver,
          ),
        ],
      );
}

class _DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'EnhanTodo',
                style: Theme.of(context).primaryTextTheme.headline5,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
            ListTile(
              leading: Icon(Icons.event_note),
              title: Text('Todo List'),
              onTap: () {
                Provider.of<EnhanTodoViewModel>(context, listen: false).sliver =
                    TodoList();
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
}
