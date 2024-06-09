import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class VideoContainer extends StatelessWidget {
  const VideoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.w,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
      child: Container(
        height: 13.h,
        width: 100.w,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.w)),
        child: Padding(
          padding: EdgeInsets.all(2.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SvgWidget(svg: Images.videoFileFill),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "فيديو",
                    style:
                        TextStyleClass.semiBoldStyle(color: Color(0xff194B8C)),
                  ),
                  Text("(60 ثانيه)",
                      style: TextStyleClass.smallBoldStyle(
                          color: Color(0xffB9C0C9)))
                ],
              ),
             
                
            ],
          ),
        ),
      ),
    );
  }
}
