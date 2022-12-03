import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  int _selectedMenuOpt = 0;

  int get selectedMenuOptget => _selectedMenuOpt;

  set selectedMenuOptset(int i) {
    _selectedMenuOpt = i;
    notifyListeners();
  }
}
