import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class OredNumberWidget extends StatelessWidget {
  const OredNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
            children: <Widget>[
              SvgWidget(
                svg: Images.o1,
                color: Color(0xffE3BB47),
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                "رقم الطلب : ",
                style: TextStyleClass.semiStyle(color: Color(0xff6B6464)),
              ),
              Text(
                "342353",
                style: TextStyleClass.semiStyle(color: Color(0xff6B6464)),
              )
            ],
          );
  }
}