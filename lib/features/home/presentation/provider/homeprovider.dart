import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/models/catigoresmodelcard.dart';

class HomeProvider extends ChangeNotifier{

List<CatigoresModelCard> categoriesCard=[
CatigoresModelCard(image: AssetImage("${Images.matrial}"), catigorName: 'المصنعين'),
CatigoresModelCard(image:AssetImage("${Images.iconpark}"), catigorName: 'المنتجين'),
CatigoresModelCard(image: AssetImage("${Images.storefront}"), catigorName: 'الجملة'),
CatigoresModelCard(image:AssetImage("${Images.flowbit}"), catigorName: 'الأسواق'),
CatigoresModelCard(image:AssetImage("${Images.iconparapp}") , catigorName: 'أخرى'),
CatigoresModelCard(image: AssetImage("${Images.gameicon}"), catigorName: 'الموزعين'),
CatigoresModelCard(image:AssetImage("${Images.agent}"), catigorName: 'الوكلاء'),
CatigoresModelCard(image:AssetImage("${Images.carbon}"), catigorName: 'الموردين')
];
// Widget getHomePage(){
// Provider.of<BannerProvider>(Constants.globalContext()).getnearbanners();
// return HomePageApp();

// }
  
}