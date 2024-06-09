import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/features/mylocation/presentation/widgets/colum_with_wrap.dart';
import 'package:untitled/features/mylocation/presentation/widgets/top_row.dart';

class MyLocation extends StatelessWidget {
  const MyLocation({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: 100.w,
      height: 100.h,
      child: Stack(
        children: <Widget>[
          Container(
            height: 40.h,
            width: 100.w,
            decoration: BoxDecoration(color: Colors.black),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 35.h,
                    width: 35.w,
                    child: Image.asset("${Images.alhyy}"),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child:Padding(
                    padding:  EdgeInsets.only(left: 2.w,right: 2.w,top: 2.w),
                    child: TopRow(),
                  )
                ),
                 Align(
                  alignment: Alignment.bottomCenter,
                  child:Padding(
                    padding:  EdgeInsets.only(bottom: 13.w),
                    child: WrapColumn(),
                  )
                )
              ],
            ),
          ),
          Expanded(
            child: Positioned(
              top: 35.h,
              //  left: 10.w,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                child: Container(
                  // height: 50.h,
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
