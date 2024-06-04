import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/features/account/presentation/widgets/circelAvater.dart';

class ContainerProfileAccount extends StatelessWidget {
  const ContainerProfileAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.w),
         ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              InkWell(child: Image.asset("${Images.exitAll}")),
              SizedBox(height: 2.h,),
              InkWell(child: Image.asset("${Images.update}")),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment:MainAxisAlignment.start,
                children: [
                  Text(
                    "أحمد محمد",
                    style: TextStyleClass.semiHeadBoldStyle(),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      Text("معتمد",
                          style: TextStyleClass.normalBoldStyle(
                              color: Color(0xff25A189))),
                              SizedBox(width: 2.w,),
                              Image.asset("${Images.protect}")
                   ],
                  )
                ],
              ),
              SizedBox(
                width: 2.w,
              ),
            CircleAvatarProf(),
            SizedBox(
                width: 3.w,
              )
            ],
          
          )
        ],
      ),
    );
  }
}
