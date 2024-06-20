import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/widget/button_widget.dart';

import '../provider/conection_us_provider.dart';
class ContainerConection extends StatelessWidget {
  const ContainerConection({super.key, required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    var myprovider=Provider.of<ConectionUsProvider>(context);
    return Padding(
      padding:  EdgeInsets.only(bottom: 3.h),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            child: Container(
          height:  myprovider.conectionUsModelList[index].height,
              padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.w),
                  border: Border.all(color: Color(0xffBBBBBB))),
            ),
          ),
          Positioned(
            top:-1.2.h ,
            right: 3.w,
            child: Container(
              color: Colors.white,
              child: Text("${myprovider.conectionUsModelList[index].text}",style: TextStyleClass.semiStyle(),))),

              
        ],
      ),
    );

  }
}
