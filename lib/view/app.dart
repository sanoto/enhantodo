import 'package:flutter/material.dart';

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
    home: Scaffold(
      appBar: AppBar(
        title: const Text('EnhanTodo'),
      ),
      drawer: _DrawerWidget(),
    ),
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
