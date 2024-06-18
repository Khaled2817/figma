import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class AddimageConatiner extends StatelessWidget {
  const AddimageConatiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Text(
                "اضف صوره السياره",
                style: TextStyleClass.semiStyle(),
              ),
              SizedBox(
                height: 1.h,
              ),
              SvgWidget(svg: Images.addImage)
            ],
          ),
        ),
        SizedBox(
          width: 3.w,
        ),
        Container(
          child: Column(
            children: <Widget>[
              Text("اضف صوره لوحه السياره", style: TextStyleClass.semiStyle()),
               SizedBox(
                height: 1.h,
              ),
              SvgWidget(svg: Images.addImage)
            ],
          ),
        )
      ],
    );
  }
}
