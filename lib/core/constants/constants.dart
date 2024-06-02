import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Constants{


static final GlobalKey<NavigatorState> navState = GlobalKey<NavigatorState>();
  static bool isTablet = false;

  static const cirularBorderRadius = BorderRadius.vertical(top: Radius.circular(53));

  static BuildContext globalContext(){
    return navState.currentContext!;
  }
 static String  baseUri ="https://maijz.frmawy.tech/public/api/";

}
EdgeInsetsGeometry appPadding=EdgeInsets.only(left: 3.w, right: 3.w, top: 3.w);
