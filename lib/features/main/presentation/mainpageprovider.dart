import 'package:flutter/material.dart';
import 'package:untitled/features/account/presentation/pages/account.dart';
import 'package:untitled/features/chats/presentation/pages/chats.dart';
import 'package:untitled/features/home/presentation/pages/hompage.dart';
import 'package:untitled/features/orders/presentation/pages/orders.dart';

class MainPageProvider extends ChangeNotifier{
int currentIndex=0;
List<Widget> screens=[
HomePageApp(),
OrdersPage(),
ChatsPage(),
AccountPage()
];
void changeIndex(int index){
currentIndex =index;
notifyListeners();
}
// Widget getHomePage(){
// Provider.of<BannerProvider>(Constants.globalContext()).getnearbanners();
// return HomePageApp();

// }
  
}