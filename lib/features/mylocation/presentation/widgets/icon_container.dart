import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/images.dart';

class IconContainer extends StatelessWidget {
  Icon icon;
  IconContainer({super.key,required this.icon});
  @override
  Widget build(BuildContext context) {
    return    Container(
          height: 5.h,
          width: 5.h,
        decoration: BoxDecoration(
          backgroundBlendMode:BlendMode.overlay ,
          color: Colors.white,
          borderRadius: BorderRadius.circular(2.w)
          ,border:Border.all(color:Colors.red)
        ),
          child: icon);
  }
}