import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MiluqTheme with ChangeNotifier {
  MaterialColor _color = Colors.purple;
  ThemeMode _mode = ThemeMode.system;

  MaterialColor get color => _color;

  ThemeMode get mode => _mode;

  void setPrimaryColor(MaterialColor color) {
    _color = color;
    notifyListeners();
  }

  void setThemeMode(ThemeMode mode) {
    _mode = mode;
    notifyListeners();
  }
}
