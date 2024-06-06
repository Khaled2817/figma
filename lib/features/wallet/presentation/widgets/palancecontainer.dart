import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class Palance extends StatelessWidget {
  const Palance({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.w,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11.w)),
      child: Stack(children: [
        SvgWidget(
          svg: Images.wallet,
          width: 91.w,
        ),
        SizedBox(height: 2.w,),
        Positioned(
            top: 6.h,
            left: 55.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                     Text(
          "الرصيد",
          style: TextStyleClass.semiHeadBoldStyle(color: Colors.white),
        ),
                Text(
                  "ر.س 1.234",
                  style: TextStyleClass.semiHeadBoldStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 2.w,
                )
              ],
            ))
      ]),
    );
  }
}
