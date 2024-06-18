import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/back_button_widget.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class AppbarBasketWidget extends StatelessWidget {
  const AppbarBasketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   
     Container(
                width: 100.w,
                height: 8.h,
                color:Color(0xffE3BB47),
                child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BackButtonWidget(color: Colors.white,),
                         Row(children: <Widget>[ Image.asset("${Images.basketshop}"),
                          SizedBox(width: 1.w,),
                            Text(
                          "السلة",
                          style: TextStyleClass.bigStyle(color: Colors.white),
                        )],),
                        SizedBox(width: 10.w,)
                        ],),
              );
  }
}