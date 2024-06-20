import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class PersonCallWidget extends StatelessWidget {
  const PersonCallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 2.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.w),
            border: Border.all(color: Color(0xffE3BB47))),
        child: Row(
          children: [
            Container(
              width: 15.w,
              height: 10.h,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset(Images.ppp1),
            ),
            SizedBox(
              width: 2.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "احمد محمد",
                  style: TextStyleClass.normalStyle(),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 1.5.w,vertical: 1.5.w),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(2.w),  color: Color(0xff4CA63D),),
                
                  child: Row(
                    children: [
                      Image.asset("${Images.phoncall}"),
                      SizedBox(width: 2.w,),
                      Text("تواصل مع الفني",style: TextStyleClass.smallStyle(color: Colors.white),),

                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
