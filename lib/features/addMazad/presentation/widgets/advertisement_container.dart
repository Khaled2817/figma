import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class AdvertisementContainer extends StatelessWidget {
  const AdvertisementContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "اضافة فيديو او صور",
          style: TextStyleClass.semiBoldStyle(color: Color(0xffB9C0C9)),
        ),
        SizedBox(
          height: 2.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Material(
              color: Colors.white,
              elevation: 1.w,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.w)),
              child: InkWell(
                onTap: () {},
                child: Container(
                    height: 23.h,
                    width: 42.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.w),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgWidget(svg: Images.videoFileFill),
                        Text(
                          "فيديو",
                          style: TextStyleClass.semiBoldStyle(
                              color: Color(0xff194B8C)),
                        ),
                        Text("(60 ثانيه)",
                            style: TextStyleClass.smallBoldStyle(
                                color: Color(0xffB9C0C9)))
                      ],
                    )),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Material(
              elevation: 1.w,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.w)),
              child: InkWell(
                onTap: () {},
                child: Container(
                    height: 23.h,
                    width: 42.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.w),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgWidget(svg: Images.imagebox),
                        Text(
                          "صور",
                          style: TextStyleClass.semiBoldStyle(
                              color: Color(0xff194B8C)),
                        ),
                        Text("(20 صورة)",
                            style: TextStyleClass.smallBoldStyle(
                                color: Color(0xffB9C0C9)))
                      ],
                    )),
              ),
            )
          ],
        )
      ],
    );
  }
}
