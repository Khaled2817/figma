import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';

class BuyContainer extends StatelessWidget {
  const BuyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.w),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 221, 221, 221),
              offset: Offset(
                0.0,
                5.0,
              ),
              blurRadius: 5.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ]),
      child: Padding(
        padding: EdgeInsets.all(2.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Checkbox(
                  // boolean value
               side: BorderSide(color: Color(0xffE6E6E6)),
                  value: false, onChanged: (bool? value) {},
                ),
             
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "بطاقة المستر كارد",
                      style: TextStyleClass.semiStyle(),
                    ),
                    SizedBox(width: 2.w,),
                    Image.asset("${Images.masterCard}")
                  ],
                ))
              ],
            ),
            SizedBox(height: 2.h,),
            Row(
              children: [
                Checkbox(
                  // boolean value
                  side: BorderSide(color: Color(0xffE6E6E6)),
                  value: false, onChanged: (bool? value) {},
                ),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Apple Pay",
                      style: TextStyleClass.semiStyle(),
                    ),
                        SizedBox(width: 2.w,),
                    Image.asset("${Images.applePay}")
                  ],
                ))
              ],
            ),
              SizedBox(height: 2.h,),
            Container(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "اضافة بطاقة جديدة",
                    style:
                        TextStyleClass.normalBoldStyle(color: Color(0xffE97053)),
                  ),
                  SizedBox(width: 2.w,),
                  Container(
                    child: Icon(Icons.add, color: Color(0xffE97053),size: 5.w,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.w),
                      border: Border.all(color:Color(0xffE97053) )
                    ),
                  )
                ],
              ),
            ),
              SizedBox(height: 2.h,),
          ],
        ),
      ),
    );
  }
}
