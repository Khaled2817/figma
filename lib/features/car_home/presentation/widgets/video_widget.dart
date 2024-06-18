import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(2.w),
      child: Container(
        height: 15.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: Color(0xff2C2B34),
          borderRadius: BorderRadius.circular(5.w)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgWidget(svg: Images.pasue),
            SizedBox(height: 2.h,),
            Text(
              "طريقه استخدام .  التطبيق",
              style: TextStyleClass.headStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
