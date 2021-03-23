import 'package:flutter/foundation.dart' show ChangeNotifier;

class User extends ChangeNotifier {
  int _age;
  String _name;

  User(this._age, this._name);

  int get age => _age;
  String get name => _name;
  bool get isOldd => _age > 24;

  void brithDay() {
    _age++;
    notifyListeners();
  }
  void changeName(String newName) {
    _name = newName;
    notifyListeners();
  }
}
