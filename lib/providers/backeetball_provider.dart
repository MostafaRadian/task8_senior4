import 'package:flutter/material.dart';

class BasketBallProvider extends ChangeNotifier {
  int countA = 0;
  int countB = 0;

  void add(String team, int value) {
    if (team == "A") {
      countA += value;
    } else {
      countB += value;
    }
    notifyListeners();
  }

  void reset() {
    countA = 0;
    countB = 0;
    notifyListeners();
  }
}
