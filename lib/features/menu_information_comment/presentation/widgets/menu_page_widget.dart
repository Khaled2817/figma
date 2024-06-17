import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/features/menu_information_comment/presentation/widgets/wrap_menu.dart';
import 'package:untitled/features/menu_information_comment/presentation/widgets/wrap_menu2.dart';

class MenuPageWidget extends StatelessWidget {
  const MenuPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
    
      WrapMenu(),
      Padding(
        padding:  EdgeInsets.all(2.w),
        child: WrapMenu2(),
      )
      
      
      ],),
    );
  }
}