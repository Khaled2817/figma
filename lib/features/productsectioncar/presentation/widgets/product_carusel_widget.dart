
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/images.dart';


class ProductCaruselWidget extends StatelessWidget {
  const ProductCaruselWidget({super.key});
  @override
  Widget build(BuildContext context) {
     
    return   Container(
                        width: 100.w,
                        decoration: BoxDecoration(
                          border: Border.all(color:Color(0xffE3BB47)),
                          borderRadius: BorderRadius.circular(5.w),
                            color: Colors.transparent),
                        child: Container(
                          height: 20.h,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.w),
                            image: DecorationImage(
                              image: AssetImage("${Images.ss55}"),
                              
                            ),
                          ),
                        
                        ),
                      );
  }
}
