import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/mylocation/presentation/widgets/icon_container.dart';

class TopRow extends StatelessWidget {
  const TopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: Container(
              height: 5.h,
              decoration: BoxDecoration(
                color: Colors.white,
                backgroundBlendMode:BlendMode.overlay,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color:Colors.red)
                  ),
              child: Padding(
                padding: EdgeInsets.all(2.w),
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "العنوان الحالي",
                      style: TextStyleClass.normalBoldStyle(
                          color: Colors.white),
                    ),
                    Spacer(),
                    Container(
                        child: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 8.w,
                      color: Colors.white,
                    )),
                  ],
                ),
              ),
            )),
        SizedBox(width:2.w),
        IconContainer(icon:Icon(Icons.search,color: Colors.white,) ,),
        SizedBox(width:2.w),
        IconContainer(icon:Icon(Icons.notifications,color: Colors.white) ,),
        SizedBox(width:2.w),
        IconContainer(icon:Icon(Icons.chat,color: Colors.white) ,)
      ],
    );
  }
}
