import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100.w,
          child: Row(
            children: <Widget>[
              SvgWidget(
                svg: Images.backawro,
                color: Colors.white,
              ),
              SizedBox(
                width: 30.w,
              ),
              Text(
                textAlign: TextAlign.center,
                "اوامر المزادات",
                style: TextStyleClass.headBoldStyle(color: Colors.white),
              ),
            ],
          ),  
        
        ),
        SizedBox(height: 5.h,),
        Row(
          children: <Widget>[
            Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "اوامر المزادات المفتوحه",
                  style: TextStyleClass.normalBoldStyle(color: Colors.white),
                ),
                SizedBox(height: 0.2.h,),
               
              ],
            ),
            SizedBox(width: 2.w,),
            Container(height: 3.h,
            width: 6.w,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.w)
            ,color: Colors.white
            
            ),
            child: Center(child: Text("1",style: TextStyleClass.normalBoldStyle(color: Color(0xff194B8C)),)),
            ),
              SizedBox(width: 5.w),
              Text(
                  textAlign: TextAlign.center,
                  "اوامر المزادات المنتهيه",
                  style: TextStyleClass.normalBoldStyle(color: Colors.white),
                ),
          ],
        ),
        Row(children: [ 
          Container(height: 0.5.h,
                width: 38.w,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(2.w),
                  color: Colors.white
                ),)],)
      ],
    );
  }
}
