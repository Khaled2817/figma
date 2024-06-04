import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/features/main/presentation/mainpageprovider.dart';
import 'package:untitled/features/main/presentation/pages/navigationbarwidget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
     var myProvider= Provider.of<MainPageProvider>(context);
    return Scaffold(
      bottomNavigationBar: NavigationBarWidget()
              ,body:myProvider.screens[myProvider.currentIndex],
             );
  }
}