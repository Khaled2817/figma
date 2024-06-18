import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/core/widget/text_field.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      child: Column(
        children: <Widget>[
          TextFieldWidget(
            controller: TextEditingController(),
            hintText: "My address",
            suffix: Icon(Icons.arrow_forward_ios_outlined),
          ),
          Row(
            children: [
              Container(
                  width: 44.w,
                  child: TextFieldWidget(
                    controller: TextEditingController(),titleWidget:Row(
                      children: [
                        SizedBox(width: 2.w,),
                        Text("Raw Number",style: TextStyleClass.semiStyle()),
                      ],
                    ),
                  )),
              SizedBox(
                width: 6.w,
              ),
              Container(
                  width: 44.w,
                  child: TextFieldWidget(
                    controller: TextEditingController(),titleWidget:Row(
                      children: [
                        SizedBox(width: 2.w,),
                        Text("Seat number",style: TextStyleClass.semiStyle()),
                      ],
                    )
                  ))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("schedule order"),
                  Text("2023/2/12-2.00AM"),
                ],
              ),
              SizedBox(
                width: 1.w,
              ),
              SvgWidget(svg: Images.o3),
            ],
          ),
          TextFieldWidget(
            controller: TextEditingController(),
            hintText: "Add Comment",
            textAlign:TextAlign.center,
            suffix: Icon(Icons.keyboard_arrow_down_sharp,size: 9.w,),maxLines: 2,
          )
        ],
      ),
    );
  }
}
