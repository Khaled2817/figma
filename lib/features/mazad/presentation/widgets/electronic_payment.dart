import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';

class ElectronicPayment extends StatelessWidget {
  const ElectronicPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              
              child: Text(
                "الدفع الالكتروني",
                style: TextStyleClass.semiHeadStyle(color: Color(0xffA1A1A1)),
              ),
            ),
            SizedBox(height: 0.5.h,),
            Container(height: 0.3.h,
           width: 35.w,
            decoration: BoxDecoration(
              color: Color(0xff0087FE),
borderRadius: BorderRadius.circular(2.w)

            ),
          )
          ],
        )
      ],
    );
  }
}
