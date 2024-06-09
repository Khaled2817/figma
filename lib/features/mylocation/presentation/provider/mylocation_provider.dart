import 'package:flutter/material.dart';

class MrlocatioProvider extends ChangeNotifier{

 int index=0;
  void changeIndex(int index){
    this.index=index;
    notifyListeners();
  }


}