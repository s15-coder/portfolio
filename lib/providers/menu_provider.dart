import 'package:flutter/cupertino.dart';

class MenuProvider extends ChangeNotifier {
  bool isMenuOpen = false;
  void openMenu() {
    isMenuOpen = true;
    notifyListeners();
  }

  void closeMenu() {
    isMenuOpen = false;
    notifyListeners();
  }
}
