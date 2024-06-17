import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class ContainerTop2 extends StatelessWidget {
  const ContainerTop2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.w),
        border: Border.all(color: Color(0xffE0E0E0))
      ),
      child: Padding(
          padding: EdgeInsets.all(2.w),
          child: Row(
            children: <Widget>[
              Container(
                height: 3.h,
                width: 30.w,
                decoration: BoxDecoration(color: Color(0xff581D8A),
                borderRadius: BorderRadius.circular(2.w)
                ),
                child: Center(child: Text("Track Delivery ",style: TextStyleClass.smallStyle(color: Colors.white),)),
              ),
              Spacer(),
              Row(
                children: [
                  Column(children: <Widget>[
                  Text("MOAZ MOHAMED",style: TextStyleClass.semiStyle(color: Colors.black),),
                  Text("+201096722199",style: TextStyleClass.semiStyle(color: Colors.black),),
                  ],
                  ),
                  SizedBox(width: 2.w,),
                  SvgWidget(svg: Images.v1,color: Color(0xff581D8A),height: 7.h,)
                ],
              )
            ],
          )),
    );
  }
}
