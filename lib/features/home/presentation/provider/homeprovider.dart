import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/banner/presentation/provider/provider.dart';
import 'package:untitled/features/home/presentation/pages/home_page.dart';

class HomeProvider extends ChangeNotifier{

Widget getHomePage(){
Provider.of<BannerProvider>(Constants.globalContext()).getnearbanners();
return HomePage();

}
  
}