import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/Svg_Icon/svg_widget.dart';

class SubCategoriesWidget extends StatelessWidget {
  const SubCategoriesWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3.w),
      width: 17.w,
      padding: EdgeInsets.all(1.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 78, 75, 75),
              offset: Offset(
                0.0,
                5.0,
              ),
              blurRadius: 5.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ]),
      child:  Column(
        children: <Widget>[
          SvgWidget(
            svg: Images.shopsIcon,
          ),
          Text("الاسواق",style:TextStyleClass.normalBoldStyle(color: const Color.fromARGB(255, 0, 0, 0)))
        ],
      ),
    );
  }
}
