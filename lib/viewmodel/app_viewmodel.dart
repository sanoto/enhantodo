import 'package:flutter/material.dart';

class EnhanTodoViewModel extends ChangeNotifier {
  Widget _sliver;

  EnhanTodoViewModel(this._sliver);

  get listView => _sliver;

  set listView(Widget sliver) {
    if (this._sliver == sliver) return;
    this._sliver = sliver;
    notifyListeners();
  }
}
