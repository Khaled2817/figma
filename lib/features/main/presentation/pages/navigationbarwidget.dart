import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/features/main/presentation/mainpageprovider.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
     var myProvider= Provider.of<MainPageProvider>(context);
    return BottomNavigationBar(
              elevation:10,
              onTap: (index){
                myProvider.changeIndex(index);
              },
              currentIndex: myProvider.currentIndex,
              items: [
              BottomNavigationBarItem(icon:Image.asset("${Images.home}"),label: "الرئيسية"),
              BottomNavigationBarItem(icon: Image.asset("${Images.orders}"),label: "طلباتي"),
              BottomNavigationBarItem(icon:Image.asset("${Images.chats}"),label: "الدردشة"),
              BottomNavigationBarItem(icon: Image.asset("${Images.account}"),label: "حسابي"),
              ]
              
              ,
             );
  }
}