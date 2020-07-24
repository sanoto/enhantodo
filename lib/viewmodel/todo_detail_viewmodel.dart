import 'package:flutter/material.dart';
import 'package:moor/moor.dart';
import "package:intl/intl.dart";

import 'package:enhantodo/model/db.dart';

class TodoDetailViewModel extends ChangeNotifier {
  String title;
  String body;
  DateTime dueDate = DateTime.now();
  Priority _priority = Priority.should;
  final Todo _oldTodo;

  TodoDetailViewModel([this._oldTodo]) : super() {
    if (_oldTodo != null) {
      title = _oldTodo.title;
      body = _oldTodo.body;
      dueDate = _oldTodo.dueDate;
      _priority = _oldTodo.priority;
    }
  }

  Priority get priority => _priority;
  set priority(Priority p) {
    _priority = p;
    notifyListeners();
  }

  String get dueDateText => DateFormat.MMMd('ja_JP').add_Hm().format(dueDate);
  String get dateTextOfDueDate => DateFormat.MMMd('ja_JP').format(dueDate);
  String get timeTextOfDueDate => DateFormat.Hm('ja_JP').format(dueDate);

  set timeOfDueDate(TimeOfDay time) {
    dueDate = DateTime(
      dueDate.year,
      dueDate.month,
      dueDate.day,
      time.hour,
      time.minute,
    );
    notifyListeners();
  }

  set dateOfDueDate(DateTime date) {
    dueDate = DateTime(
      date.year,
      date.month,
      date.day,
      dueDate.hour,
      dueDate.minute,
    );
    notifyListeners();
  }

  void submit() {
    if (_oldTodo == null)
      EnhanTodoDatabase().createTodo(TodosCompanion(
        title: Value(title),
        body: Value(body),
        dueDate: Value(dueDate),
        priority: Value(_priority),
      ));
    else
      EnhanTodoDatabase().updateTodo(_oldTodo.copyWith(
        title: title,
        body: body,
        dueDate: dueDate,
        priority: _priority,
      ));
  }

  void delete() => EnhanTodoDatabase().deleteTodo(_oldTodo.id);
}
