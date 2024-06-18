import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
class AdditionContainer extends StatelessWidget {
  const AdditionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: Container(
          //  height: 10.h,
            padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.w),
                border: Border.all(color: Color(0xffBBBBBB))),
            child: Column(
              children: <Widget>[
                Row(children: <Widget>[
                  Container(
                    height: 1.9.h,
                    width: 4.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Color(0xffE3BB47))),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text("غسيل سياره",style: TextStyleClass.normalStyle())
                ]),
                SizedBox(height: 2.h,),
                Row(children: <Widget>[
                  Container(
                   height: 1.9.h,
                    width: 4.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Color(0xffE3BB47))),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text("تغير اطارات سياره",style: TextStyleClass.normalStyle())
                ])
              ],
            ),
          ),
        ),
        Positioned(
          top:-1.2.h ,
          right: 3.w,
          child: Container(
            color: Colors.white,
            child: Text(" خدمات اضافيه ",style: TextStyleClass.semiStyle(),)))
      ],
    );
  }
}
