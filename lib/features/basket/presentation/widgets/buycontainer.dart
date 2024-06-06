import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';

class BuyContainer extends StatelessWidget {
  const BuyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.w,
      color: Colors.white,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.w),
           ),
        child: Padding(
          padding: EdgeInsets.all(2.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                 
               
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "بطاقة المستر كارد",
                        style: TextStyleClass.semiStyle(),
                      ),
                      SizedBox(width: 2.w,),
                      Image.asset(Images.masterCard)
                    ],
                  ))
,
                   Checkbox(
                    // boolean value
                 side: const BorderSide(color: Color(0xffE6E6E6)),
                    value: false, onChanged: (bool? value) {},
                  ),
                ],
              ),
              SizedBox(height: 2.h,),
              Row(
                children: [
                
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Apple Pay",
                        style: TextStyleClass.semiStyle(),
                      ),
                          SizedBox(width: 2.w,),
                      Image.asset(Images.applePay)
                    ],
                  )),
                   Checkbox(
                    // boolean value
                    side: const BorderSide(color: Color(0xffE6E6E6)),
                    value: false, onChanged: (bool? value) {},
                  )
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
                          TextStyleClass.normalBoldStyle(color: const Color(0xffE97053)),
                    ),
                    SizedBox(width: 2.w,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.w),
                        border: Border.all(color:const Color(0xffE97053) )
                      ),
                      child: Icon(Icons.add, color: const Color(0xffE97053),size: 5.w,),
                    )
                  ],
                ),
              ),
                SizedBox(height: 2.h,),
            ],
          ),
        ),
      ),
    );
  }
}
