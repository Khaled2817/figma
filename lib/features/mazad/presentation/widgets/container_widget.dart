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
                  padding:  EdgeInsets.symmetric(vertical: 4.w,horizontal: 4.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2.w)
                  ),
               //   height: 7.h,
              width: 100.w,
              child: Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "مزاداتي :",
                    style: TextStyleClass.normalBoldStyle(color: Color(0xff0087FE)),
                  ),
                  SizedBox(width: 5.w,),
               Expanded(
                 child: Row(children:<Widget>[  SvgWidget(svg: Images.done1),
                   SizedBox(width: 2.w,),
                    Text(
                      "فعاله",
                      style: TextStyleClass.normalBoldStyle(color: Color(0xff615D5C)),
                    ),
                     SizedBox(width: 2.w,),
                    Expanded(
                      child: Text(
                        "(10)",
                        style: TextStyleClass.normalBoldStyle(color: Color(0xff615D5C)),
                      ),
                    )]),
               ),
                 
              Expanded(
                child: Row(children: <Widget>[    SvgWidget(svg: Images.del1),
                    SizedBox(width: 2.w,),
                    Text(
                      "منتهيه",
                      style: TextStyleClass.normalBoldStyle(color: Color(0xff615D5C)),
                    ),
                    SizedBox(width: 2.w,),
                    Text(
                      "(10)",
                      style: TextStyleClass.normalBoldStyle(color: Color(0xff615D5C)),
                    ),],),
              )
                ],
              ),
            ));
  }
}