import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Constants{
  static const String baseUri = 'https://maijz.frmawy.tech/public/api/';
  // static const String domain = '${baseUri}api/';
  static final GlobalKey<NavigatorState> navState = GlobalKey<NavigatorState>();
  static final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

  static bool isTablet = false;
  static String mainColor = '581D8A';

  static const cirularBorderRadius = BorderRadius.vertical(top: Radius.circular(53));

  static BuildContext globalContext(){
    return navState.currentContext!;
  }
}
  EdgeInsets appPadding = EdgeInsets.only(left: 3.w ,right: 3.w, top: 2.w);

  