import 'package:flutter/material.dart';

class IntroPageProvider with ChangeNotifier {
  bool _isStarted = false;

  bool get isStarted => _isStarted;

  void start() {
    _isStarted = true;
    notifyListeners();
    print("Button is clicked");
  }
}
