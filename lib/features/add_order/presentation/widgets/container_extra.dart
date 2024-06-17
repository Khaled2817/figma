import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/features/add_order/presentation/widgets/wrap_extra.dart';
import 'package:untitled/features/add_order/presentation/widgets/wrap_materials.dart';

class ContainerExtra extends StatelessWidget {
  const ContainerExtra({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 15.h,
    width: 100.w,
    padding: EdgeInsets.all(4.w),
    decoration: BoxDecoration(color: Colors.white,
    borderRadius: BorderRadius.circular(2.w),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Row(children: <Widget>[
          
   Image.asset("${Images.topawro}"),
                Spacer(),
                             Text("Extra Ingredients",style:TextStyleClass.semiBoldStyle(),),
                             
          
          ],),
          SizedBox(height: 1.h,),
      WrapExtra()
    ],),
    
    );
  }
}