import 'package:flutter/material.dart';

class EnhanTodoViewModel extends ChangeNotifier {
  Widget _sliver;

  EnhanTodoViewModel(this._sliver);

  get sliver => _sliver;

  set sliver(Widget sliver) {
    if (this._sliver == sliver) return;
    this._sliver = sliver;
    notifyListeners();
  }
}
