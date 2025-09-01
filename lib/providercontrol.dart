import 'package:flutter/material.dart';
class Heartusingprovider extends ChangeNotifier{
  bool choice = false;
  bool get mychoice => choice;

  void choices(){
    choice = !choice;
    notifyListeners();
 
  }
   
}
