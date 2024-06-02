import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';

class ContainerProductName extends StatelessWidget {
  const ContainerProductName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
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
        padding: EdgeInsets.all(5.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  child: Icon(Icons.add,color: Color(0xff25A189)),
                  decoration: BoxDecoration(borderRadius:BorderRadius.circular(2.w),
                  border: Border.all(color: Colors.grey)),
                ),
                Padding(
                  padding:  EdgeInsets.all(1.w),
                  child: Text("3",style: TextStyleClass.semiStyle(),),
                ),
                Container(
                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(2.w),
                  border: Border.all(color: Colors.grey)),
                  child: Icon(Icons.remove,color: Color(0xff25A189),),
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "اسم المنتج",
                      style: TextStyleClass.semiHeadBoldStyle(),
                    ),
                    SizedBox(height: 1.h,),
                    Text("ر.س23", style: TextStyleClass.normalBoldStyle(color: Color(0xff25A189) ))
                  ],
                ),
                SizedBox(width: 1.w,),
                CircleAvatar(
                  radius: 5.h,
                  backgroundColor: Colors.white,
                  child: Image.asset(Images.foodd),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
