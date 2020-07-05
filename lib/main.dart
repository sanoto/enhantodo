import 'package:flutter/material.dart';

void main() => runApp(EnhanTodo());

class EnhanTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('EnhanTodo'),
        ),
      ),
    );
  }
}
