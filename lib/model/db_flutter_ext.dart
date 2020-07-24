import 'package:flutter/material.dart';
import 'package:enhantodo/model/db.dart';

extension PriorityExtention on Priority {
  String get text => {
        Priority.must: '絶対やる',
        Priority.should: 'やるべき',
        Priority.maybe: 'やった方が良い',
        Priority.notHaveTo: 'やらなくてもいい',
      }[this];

  Color get lightColor => {
        Priority.must: Colors.pinkAccent,
        Priority.should: Colors.orangeAccent,
        Priority.maybe: Colors.greenAccent,
        Priority.notHaveTo: Colors.cyanAccent,
      }[this];

  Color get darkColor => {
    Priority.must: Colors.red,
    Priority.should: Colors.deepOrangeAccent,
    Priority.maybe: Colors.green,
    Priority.notHaveTo: Colors.blue,
  }[this];

  int get flex => {
        Priority.must: 2,
        Priority.should: 2,
        Priority.maybe: 3,
        Priority.notHaveTo: 3,
      }[this];

  List<bool> toList() =>
      Priority.values.map((priority) => priority == this).toList();
}
