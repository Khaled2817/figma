import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      child: Padding(
        padding:  EdgeInsets.all(2.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Material(
                  elevation: 1.w,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.w)),
                  child: SvgWidget(svg: Images.fram2,height: 4.h,width: 4.w,)),
                Spacer(),
                Row(
                                children: <Widget>[
                Text(
                  "Order Status",
                  style: TextStyleClass.semiStyle(color: Color(0xff777777)),
                ),
                SizedBox(width: 2.w,),
                SvgWidget(svg: Images.fram1)
                                ],
                              )
              ],
            ),
            SizedBox(height: 2.h,),
            Container(width: 100.w,
            height: 1.h,
            decoration: BoxDecoration(
              
              color: Color(0xff581D8A),
              borderRadius:BorderRadius.circular(2.w)),)
          ],
        ),
      ),
    );
  }
}
