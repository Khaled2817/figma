import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/features/abstractTranning/presentation/pages/abstract/abstract_page2.dart';
import 'package:untitled/features/abstractTranning/presentation/pages/abstract_page1.dart';

class FloatingButtomRow extends StatelessWidget {
  const FloatingButtomRow({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ButtonWidget(
            width: 35.w,
              onTap: () {
            
                navP(const AbstractPage1());
                // دي المفروض يتم عرض الخريطة فيها بس مش شغالة
              },
              text: 'Page1'),
              SizedBox(width: 5.w,),
          ButtonWidget(
               width: 35.w,
              onTap: () {
              
                navP(const AbstractPage2());
                // دي المفروض يتم عرض الخريطة فيها بس مش شغالة
              },
              text: 'Page2')
        ],
      ),
    );
  }
}
