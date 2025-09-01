import 'package:flutter/material.dart';
class Providerswitch extends ChangeNotifier{
  bool isOn = false;
  bool get ison =>isOn;
  void function(bool value){
    isOn = value;
    notifyListeners();
  }
}