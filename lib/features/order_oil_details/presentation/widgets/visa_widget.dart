import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class VisaWidget extends StatelessWidget {
  const VisaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SvgWidget(
                svg: Images.fontistovisa,
                color: Color(0xffE3BB47),
              ),
              SizedBox(
                width: 2.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "طرق الدفع",
                    style: TextStyleClass.semiStyle(),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "بطاقات الائتمان",
                    style: TextStyleClass.semiStyle(color: Color(0xff6B6464)),
                  )
                ],
              )
            ],
          );
  }
}