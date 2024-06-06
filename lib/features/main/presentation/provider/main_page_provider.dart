import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/config/app_color.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_function/location.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/features/account/presentation/pages/account.dart';
import 'package:untitled/features/chats/presentation/pages/chats.dart';
import 'package:untitled/features/home/presentation/pages/hompage.dart';
import 'package:untitled/features/main/presentation/pages/main_page.dart';
import 'package:untitled/features/orders/presentation/pages/orders.dart';

import '../../../../../core/models/model_bottom.dart';

class MainProvider extends ChangeNotifier {
  final List<Widget> bottomWidget = [
   HomePageApp(),
   ChatsPage(),
   OrdersPage(),
   AccountPage()
  ];
  final List<BottomModel> items = [
    BottomModel(label: 'home', svg: Images.homee),
    BottomModel(label: 'messages', svg: Images.chat),
    BottomModel(label: 'myorders', svg: Images.order),
    BottomModel(label: 'my_account', svg: Images.accountt),
  ];

  int index = 0;
  Color? checkColor(int index) {
    if (this.index == index) {
      return Color(0xff25A189);
    }
    return Colors.grey;
  }

  void setIndex(int index) {
    // if (AuthProvider.isLogin()) {
    if (index == 0) {
      // if (this.index == index) {
      //   Provider.of<HomeProvider>(Constants.globalContext(), listen: false)
      //       .toogleIsVideoPage();
      // }
      this.index = index;

      notifyListeners();
    }
    if (index == 1) {
      this.index = index;
      // Provider.of<NotificationProvider>(Constants.globalContext(),
      //         listen: false)
      //     .refresh();
      notifyListeners();
    }
    if (index == 2) {
      this.index = index;
      // Provider.of<OrderProvider>(Constants.globalContext(), listen: false)
      //     .refresh();
      notifyListeners();
    }
    if (index == 3) {
      this.index = index;
      // Provider.of<SettingsProvider>(Constants.globalContext(), listen: false)
      //     .getData();
      // Provider.of<AuthProvider>(Constants.globalContext(), listen: false)
      //     .getProfile();
      notifyListeners();
    }
    // if (index == 4) {
    //   this.index = index;
    //   Provider.of<UserProfileProvider>(Constants.globalContext(), listen: false)
    //       .getData();
    //   // Provider.of<AuthProvider>(Constants.globalContext(), listen: false)
    //   //     .getProfile();
    //   notifyListeners();
    // }
    this.index = index;
    notifyListeners();
    // } else {
    //   showGuestDialog();
    // }
  }

  void goToMainPage() async {
    index = 0;
    try {
      await determinePosition();
    } catch (e) {
      print("helloo");
    }
    // Provider.of<HomeProvider>(Constants.globalContext(), listen: false)
    //     .refresh();
    // Provider.of<HomeProvider>(Constants.globalContext(), listen: false)
    //     .resetData();
    // Provider.of<BannerProvider>(Constants.globalContext(),listen: false).refresh();
    navPARU(const MainPage());
  }
}
