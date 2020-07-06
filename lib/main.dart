import 'package:flutter/material.dart';

void main() => runApp(EnhanTodo());

class EnhanTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      ),
    );
  }
}
