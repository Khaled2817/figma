import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class WrapColumn extends StatelessWidget {
  const WrapColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 17.h,
      decoration: BoxDecoration(
          color: Colors.white,
           backgroundBlendMode: BlendMode.multiply),
      child: Column(
        children: <Widget>[
          Padding(
            padding:  EdgeInsets.only(left: 2.w,right: 2.w),
            child: Row(
              children: [
                Text("التصنيفات",
                    style: TextStyleClass.normalStyle(color: Colors.white)),
                Spacer(),
                Text(
                  "المطاعم",
                  style: TextStyleClass.normalStyle(color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5.w,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                ...List.generate(
                    8,
                    (index) => Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 9.h,
                                  width: 20.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2.w),
                                      image: DecorationImage(
                                          image: AssetImage("${Images.burger}"),
                                          fit: BoxFit.cover))),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text("سمك",
                                  style: TextStyleClass.normalStyle(
                                      color: Colors.white))
                            ],
                          ),
                        ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
