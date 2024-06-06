import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';

class ContainerProductName extends StatelessWidget {
  const ContainerProductName({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.w,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
      child: Container(
        width: 100.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.w),
          ),
        child: Padding(
          padding: EdgeInsets.all(5.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Row(
                children: [
                  CircleAvatar(
                    radius: 5.h,
                    backgroundColor: Colors.white,
                    child: Image.asset(Images.tee),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Column(
                    children: [
                      Text(
                        "اسم المنتج",
                        style: TextStyleClass.semiHeadBoldStyle(),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text("ر.س23",
                          style: TextStyleClass.normalBoldStyle(
                              color: const Color(0xff25A189)))
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.w),
                        border: Border.all(color: Colors.grey)),
                    child: const Icon(Icons.add, color: Color(0xff25A189)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1.w),
                    child: Text(
                      "3",
                      style: TextStyleClass.semiStyle(),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.w),
                        border: Border.all(color: Colors.grey)),
                    child: const Icon(
                      Icons.remove,
                      color: Color(0xff25A189),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
