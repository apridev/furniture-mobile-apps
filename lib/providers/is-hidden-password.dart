import 'package:flutter/material.dart';

class HiddenPasswordProvider with ChangeNotifier{
  bool ishiddenPassword = true;
  bool ishiddenPassword2 = true;

  void isHiddenPassword(){
    if(ishiddenPassword == true){
      ishiddenPassword = false;
    } else {
      ishiddenPassword = true;
    }
    notifyListeners();
  }

  void isHiddenPassword2(){
    if(ishiddenPassword2 == true){
      ishiddenPassword2 = false;
    } else {
      ishiddenPassword2 = true;
    }
    notifyListeners();
  }
}