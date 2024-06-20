import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/main/presentation/provider/main_page_provider.dart';
import 'package:sizer/sizer.dart';

import '../../../../../config/app_color.dart';
import '../../../../../config/text_style.dart';
import '../../../../../features/language/presentation/provider/language_provider.dart';

class ButtomNavigatorBarWidget extends StatelessWidget {
  const ButtomNavigatorBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var main = Provider.of<MainProvider>(context, listen: true);

    return Padding(
      padding: appPadding,
      child: Container(
        clipBehavior: Clip.antiAlias,
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        decoration: BoxDecoration(borderRadius:BorderRadius.circular(20.w),
        color: Color(0xff2C2B34)
        ),
        child: BottomNavigationBar(
          items: List.generate(
            main.items.length,
            (index) {
              return BottomNavigationBarItem(
                activeIcon: index==2?Container(
                    decoration: BoxDecoration( color: Color(0xffE3BB47), 
                    border: Border.all(color: Colors.white,width: 1.w),
                    shape: BoxShape.circle
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(2.w),
                      child: SvgWidget(
                        svg: main.items[index].svg,
                        width: 7.w,
                        height: 7.w,
                        color: Colors.white,
                      ),
                    ),
                  ):Container(
        decoration: BoxDecoration(
          color: Color(0xffE3BB47),
          shape: BoxShape.circle
        ),
        child: Padding(
          padding:  EdgeInsets.all(3.w),
          child: SvgWidget(
                          svg: main.items[index].svg,
                          width: 7.w,
                          height: 7.w,
                         // color: main.checkColor(index),
                        ),
        ),
      ),
        
                  icon:index==2?Container(
                    decoration: BoxDecoration(color: Colors.white, 
                    shape: BoxShape.circle
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(4.w),
                      child: SvgWidget(
                        svg: main.items[index].svg,
                        width: 5.w,
                        height: 5.w,
                        //color: main.checkColor(index),
                      ),
                    ),
                  ):SvgWidget(
                    svg: main.items[index].svg,
                    width: 7.w,
                    height: 7.w,
                    //color: main.checkColor(index),
                  ),
                  label: LanguageProvider.translate(
                      "main", main.items[index].label),
                  backgroundColor: Colors.white
                  
                  );
            },
          ),
          onTap: (int value) {
            main.setIndex(value);
          },
            showSelectedLabels: false,
      showUnselectedLabels: false,
          currentIndex: main.index,
        //  selectedLabelStyle: TextStyleClass.smallStyle(color:Color(0xff25A189)),
         // unselectedLabelStyle: TextStyleClass.smallStyle(color:Colors.grey),
        //  showSelectedLabels: false,
          elevation: 0,
         // selectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
        //  fixedColor: AppColor.secColor,
         // unselectedItemColor: Colors.grey,
          //selectedItemColor: Colors.red,
         // showUnselectedLabels: false,
          backgroundColor: Color(0xff2C2B34),
        ),
      ),
    );
  }
}
