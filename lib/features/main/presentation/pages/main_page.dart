
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/dialog/confirm_dialog.dart';
import 'package:untitled/features/language/presentation/provider/language_provider.dart';
import 'package:untitled/features/main/presentation/widgets/bottom_navifation_bar.dart';

import '../provider/main_page_provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with WidgetsBindingObserver {
  
  //   @override
  // // void initState() {
  // //   // TODO: implement initState
  // //   super.initState();
  // //   WidgetsBinding.instance.addObserver(this);
  // //   // FirebaseMessaging.instance.getInitialMessage().then((event) {
  // //   //   if(event!=null){
  // //   //     if(event.data.isNotEmpty){
  // //   //       String payload = jsonEncode(event.data);
  // //   //       clickNoti(payload);
  // //   //     }
  // //   //   }
  // //   // });

  // // }
  @override
  Widget build(BuildContext context) {
    var model = Provider.of<MainProvider>(context);
    return PopScope(
      canPop: false,
      onPopInvoked: (val) async {
        confirmDialog(LanguageProvider.translate('main', 'exit'),
            LanguageProvider.translate('main', 'logout'), () {
          exit(0);
        });
      },
      child: Scaffold(
        //floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar: const ButtomNavigatorBarWidget(),
        body: model.bottomWidget[model.index],
      ),
    );
  }
}
