import 'dart:ffi';

import 'package:flutter/material.dart';

class OrderOilDetailsProvider extends ChangeNotifier{
  
bool isDismissible=false;
void colse(){
isDismissible=true;
notifyListeners();
}
}