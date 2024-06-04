import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/images.dart';

class CircleAvatarProf extends StatelessWidget {
  const CircleAvatarProf({super.key});

  @override
  Widget build(BuildContext context) {
    return    Material(
                elevation: 3,
                shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.w)) ,
                 child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Color(0xffE97053),),
                  borderRadius: BorderRadius.circular(7.w)
                  ),
                   child: CircleAvatar(
                     radius: 7.w,
                     backgroundImage: AssetImage("${Images.prof}"),
                   ),
                 ),
               );
  }
}