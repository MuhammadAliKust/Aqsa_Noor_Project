import 'package:flutter/cupertino.dart';

class NameProvider extends ChangeNotifier {
  String _name = "";

  void setName(String value) {
    _name = value;
    notifyListeners();
  }

  String getName() => _name;
}
