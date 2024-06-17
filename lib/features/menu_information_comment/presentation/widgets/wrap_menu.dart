import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class WrapMenu extends StatelessWidget {
  const WrapMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 17.h,
      decoration: BoxDecoration(
         // color: Colors.white,
          ),
      child: Column(
        children: <Widget>[
          Padding(
            padding:  EdgeInsets.only(left: 2.w,right: 2.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 2.w),
                  child: Text("Categories",
                      style: TextStyleClass.normalStyle(color:Colors.black)),
                ),
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
                              Material(
                                elevation: 1.w,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
                                child: Container(
                                    height: 9.h,
                                    width: 20.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2.w),
                                        image: DecorationImage(
                                            image: AssetImage("${Images.pizzaaa}"),
                                            fit: BoxFit.cover))),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Material(
                                color: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
                                elevation:5.w,
                                child: Container(
                                  decoration: BoxDecoration(
borderRadius: BorderRadius.circular(2.w),
color:Colors.transparent
                                  ),
                                  child: Text("Pizza",
                                      style: TextStyleClass.normalStyle(
                                          color: Colors.black)),
                                ),
                              )
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
