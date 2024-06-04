import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/Svg_Icon/svg_widget.dart';

class HeaderMarketName extends StatelessWidget {
  String? marketname;
  String? marketlocation;
  HeaderMarketName(this.marketlocation,this.marketname);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 8.w,
        ),
        Image(image: AssetImage("${Images.Message_fill}")),
        SizedBox(
          width: 3.w,
        ),
        Image(image: AssetImage("${Images.Phone_fill}")),
        SizedBox(
          width: 17.w,
        ),
        Column(
          children: <Widget>[
            Image(image: AssetImage("${Images.Rectangle}")),
            SizedBox(
              height: 2.h,
            ),
            Text(
             "${marketlocation}",
              style: TextStyleClass.semiBoldStyle(color: Color(0xff25A189)),
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              children: [
                Text(
                 "${marketname}",
                  style: TextStyleClass.normalBoldStyle(),
                ),
                Image(image: AssetImage("${Images.Pinalt}"))
              ],
            )
          ],
        ),
        SizedBox(
          width: 15.w,
        ),
        Column(
          children: <Widget>[
            SvgWidget(svg: Images.Group),
            Text(
              "موثق",
              style: TextStyleClass.normalBoldStyle(),
            ),
          ],
        )
      ],
    );
  }
}
