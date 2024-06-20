import 'package:flutter/material.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/core/widget/text_field.dart';

class TextfildSearchWidget extends StatelessWidget {
  const TextfildSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFieldWidget(
      controller: TextEditingController(),
      prefix: SvgWidget(
        svg: Images.searchoil,
        color: Color(0xffE3BB47),
      ),
      hintText: 'زيت موبيل',
      hintStyle: TextStyleClass.normalStyle(color: Color(0xff918E8E)),
      borderColor: Color(0xffE3BB47) ,
    );
  }
}
