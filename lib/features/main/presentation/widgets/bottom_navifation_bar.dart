import 'package:flutter/material.dart';
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

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        child: BottomNavigationBar(
          items: List.generate(
            main.items.length,
            (index) {
              return BottomNavigationBarItem(
                  icon:SvgWidget(
                    svg: main.items[index].svg,
                    width: 7.w,
                    height: 7.w,
                    color: main.checkColor(index),
                  ),
                  label: LanguageProvider.translate(
                      "main", main.items[index].label),
                  backgroundColor: Colors.white);
            },
          ),
          onTap: (int value) {
            main.setIndex(value);
          },

          currentIndex: main.index,
          selectedLabelStyle: TextStyleClass.smallStyle(color:Color(0xff25A189)),
          unselectedLabelStyle: TextStyleClass.smallStyle(color:Colors.grey),
          showSelectedLabels: true,
          elevation: 10,
          selectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          fixedColor: AppColor.defaultColor,
          unselectedItemColor: Colors.grey,
          //selectedItemColor: Colors.red,
          showUnselectedLabels: true,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
