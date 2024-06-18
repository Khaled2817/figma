import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "200.00 ريال",
          style: TextStyleClass.semiHeadStyle(color: Color(0xffE3BB47)),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Text(
              "زيت موبيل ",
              style: TextStyleClass.semiHeadStyle(),
            ),
            Text(
              "2 ليتر",
              style: TextStyleClass.semiHeadStyle(color: Color(0xffE3BB47)),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          "زيت موتور سوبر 15W-50 من موبيل - 4 لتر مع 1 لتر إضافي · 4.64.6 من 5 نجوم (154). تم شراء 100+ سلعة في ",
              
          style: TextStyleClass.semiStyle(color:Color(0xff6B6464)),
          maxLines: 10,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
