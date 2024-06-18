import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';

class AddressOrderWidget extends StatelessWidget {
  const AddressOrderWidget({super.key});

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
                   height: 4.h,
                    width: 4.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xffE3BB47))),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text("عنوان المنزل ، الدمام ،فيلا 13",style: TextStyleClass.normalStyle(color: Color(0xff918E8E)))
                ]),
                Row(children: <Widget>[
                  Container(
                   height: 4.h,
                    width: 4.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xffE3BB47))),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text("عنوان المكتب  ، الدمام ، شارع عزيز ،فيلا 13",style: TextStyleClass.normalStyle(color: Color(0xff918E8E)))
                ]),


                 Row(children: <Widget>[
                 Icon(Icons.add,color: Color(0xffE3BB47),),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text("اضف عنوان جديد",style: TextStyleClass.normalStyle(color: Color(0xff918E8E)))
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
            child: Text(" عنوان الطلب  ",style: TextStyleClass.semiStyle(),)))
      ],
    );
  }
}