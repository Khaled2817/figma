import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class HeaderMarketName extends StatelessWidget {
  String? marketname;
  String? marketlocation;
  HeaderMarketName(this.marketlocation,this.marketname, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment:MainAxisAlignment.center,
      children: <Widget>[
           Column(
          children: <Widget>[
             SizedBox(
          width: 30.w,
        ),
            const SvgWidget(svg: Images.Group),
            Text(
              "موثق",
              style: TextStyleClass.normalBoldStyle(),
            ),
          ],
        ),
      
        Column(
          children: <Widget>[
            const Image(image: AssetImage(Images.Rectangle)),
            SizedBox(
              height: 2.h,
            ),
            Text(
             "$marketlocation",
              style: TextStyleClass.semiBoldStyle(color: const Color(0xff25A189)),
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              children: [
                Text(
                 "$marketname",
                  style: TextStyleClass.normalBoldStyle(),
                ),
                const Image(image: AssetImage(Images.Pinalt))
              ],
            )
          ],
        ),
         SizedBox(
          width: 15.w,
        ),
        const Image(image: AssetImage(Images.Phone_fill)),
     
        SizedBox(
          width: 3.w,
        ),
        const Image(image: AssetImage(Images.Message_fill)),
      ],
    );
  }
}
