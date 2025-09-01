import 'package:flutter/material.dart';
class providercontrols extends ChangeNotifier{
  final List<Color> colors = [Colors.pink, Colors.yellow, Colors.black, Colors.blue];
  int currentIndex = 0;

  Color get currentColor => colors[currentIndex];

  void changeColor() {
    currentIndex = (currentIndex + 1) % colors.length;
    notifyListeners();
  }
}