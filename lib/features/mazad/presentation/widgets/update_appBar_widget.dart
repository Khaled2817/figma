import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class UpdateAppbarWidget extends StatelessWidget {
  const UpdateAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

 Container(
          width: 100.w,
          padding: appPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SvgWidget(
                svg: Images.backawro,
                color: Colors.white,
              ),
              // SizedBox(
              //   width: 26.w,
              // ),
              Text(
                textAlign: TextAlign.center,
                "تحديث البيانات",
                style: TextStyleClass.headBoldStyle(color: Colors.white),
              ),
              SizedBox(width: 10.w,)
            ],
          ),  
        
        ),

    ],);
  }
}