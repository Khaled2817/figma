import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class WidgetAppbar extends StatelessWidget {
  const WidgetAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.only(left: 8.w,right: 8.w,top: 5.w),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("${Images.dark3}"), fit: BoxFit.cover)),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("${Images.cart}"),
              Spacer(),
          Icon(Icons.arrow_back_ios_new,color: Color(0xffAE9DBC),)
            ],
          ),
          SizedBox(height: 4.h,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                "Mayrig Riyadh - Altahliya",
                style: TextStyleClass.semiHeadBoldStyle(color: Colors.white),
              ),
              Text(
                "Al Reyad , Hay Elsefrat",
                style: TextStyleClass.smallStyle(color: Colors.white),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                    Text(
                    "Free ",
                    style: TextStyleClass.tinyStyle(color: Colors.white),
                  ),
                  Image.asset("${Images.free}"),
                  SizedBox(width: 2.w,),
                  Text(
                    "45 Min. ",
                    style: TextStyleClass.tinyStyle(color: Colors.white),
                  ),
                  SvgWidget(svg: Images.time),
                     SizedBox(width: 2.w,),
                  Image.asset("${Images.p3}"),
                  SizedBox(
                    width: 2.w,
                  ),
                  Image.asset("${Images.p2}"),
                  SizedBox(
                    width: 2.w,
                  ),
                  Image.asset("${Images.p1}"),
                ],
              )
            ],
          ),
          SizedBox(height: 5.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset("${Images.downawro}")],
          ),
        ],
      ),
    );
  }
}
