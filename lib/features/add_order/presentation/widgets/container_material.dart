import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/add_order/presentation/widgets/wrap_materials.dart';

class ContainerMaterial extends StatelessWidget {
  const ContainerMaterial({super.key});

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
      Text("Ingredients",style:TextStyleClass.semiBoldStyle(),),
      SizedBox(height:0.5.h,),
      Text("Please choose the materials",style:TextStyleClass.semiStyle(color: Color(0xff7E7E7E)),),
      SizedBox(height: 2.h,),
       Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children:
       
        [WrapMaterials(),],)
    ],),
    
    );
  }
}