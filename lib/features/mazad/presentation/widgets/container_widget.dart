import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
              elevation: 1.w,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
                child: Container(
                  padding: appPadding,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2.w)
                  ),
                  height: 7.h,
              width: 100.w,
              child: Padding(
                padding:  EdgeInsets.only(right: 4.w),
                child: Row(
                 // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "مزاداتي :",
                      style: TextStyleClass.normalBoldStyle(color: Color(0xff0087FE)),
                    ),
                    SizedBox(width: 2.w,),
                   SvgWidget(svg: Images.done1),
                   SizedBox(width: 2.w,),
                    Text(
                      "فعاله",
                      style: TextStyleClass.normalBoldStyle(),
                    ),
                    SizedBox(width: 2.w,),
                    Text(
                      "(10)",
                      style: TextStyleClass.normalBoldStyle(),
                    ),
                    SizedBox(width: 3.w,),
                    SvgWidget(svg: Images.del1),
                    SizedBox(width: 2.w,),
                    Text(
                      "منتهيه",
                      style: TextStyleClass.normalBoldStyle(),
                    ),
                    SizedBox(width: 2.w,),
                    Text(
                      "(10)",
                      style: TextStyleClass.normalBoldStyle(),
                    ),
                  ],
                ),
              ),
            ));
  }
}