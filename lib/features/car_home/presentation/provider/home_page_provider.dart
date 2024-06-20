import 'package:flutter/material.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/features/sections/presentation/pages/section_page.dart';

class HomePageProvider extends ChangeNotifier{
  void goTo(Widget widget){

    navP(widget);
  }
}