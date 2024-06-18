import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/text_field.dart';

class TextfielWidgetConatiner extends StatelessWidget {
  const TextfielWidgetConatiner({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFieldWidget(
      hintText: 'يوم 12 الساعه 2:00',
      prefix: Image.asset("${Images.donelist}"),
      suffix: Icon(Icons.keyboard_arrow_down_rounded,weight: 10.w,color: Color(0xff3B3B3B),),
      controller: TextEditingController(),
      titleWidget: Row(
        children: [
          SizedBox(width: 2.w,),
          Text(
            "اختار موعد",
            style: TextStyleClass.semiStyle(),
          )
        ],
      ),
    );
  }
}
