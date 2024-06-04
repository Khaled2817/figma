import 'package:flutter/material.dart';
import 'package:untitled/config/app_color.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';

class ProductDiscountDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("بيتزا خضار مع اضافة صوصات",
            style: TextStyleClass.headBoldStyle(color:AppColor.defaultColor)),
        Row(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text:"23 رس",
                      style: TextStyleClass.normalBoldStyle(
                          color: AppColor.secColor)),
             
                       WidgetSpan(
                          child: Transform.translate(
                            offset: Constants.isTablet
                                ? const Offset(0, -10)
                                : const Offset(0, 10),
                            child: Text(
                                "رس 25",
                                style: TextStyleClass.normalLineThroughStyle(
                                    color:AppColor.fifthColor)),
                          ),
                        )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
