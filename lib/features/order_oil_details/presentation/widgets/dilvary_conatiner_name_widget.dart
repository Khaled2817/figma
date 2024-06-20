import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/order_oil_details/presentation/widgets/present_bar_widget.dart';

class DilvaryConatinerNameWidget extends StatelessWidget {
  const DilvaryConatinerNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding:EdgeInsets.symmetric(horizontal: 2.w),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
          Text("المندوب في الطريق اليك",style: TextStyleClass.semiStyle(),),
          SizedBox(height: 1.h,),
          Row(children: <Widget>[
          SvgWidget(svg: Images.o3,color: Color(0xffE3BB47)),
          SizedBox(width: 2.w,),
          Text("2024/2/2",style: TextStyleClass.semiStyle(color: Color(0xff6B6464))),
          SizedBox(width: 2.w,),
          SvgWidget(svg: Images.ionTimedate,color: Color(0xffE3BB47),),
          SizedBox(width: 2.w,),
          Text("10 : 30 AM",style: TextStyleClass.semiStyle(color: Color(0xff6B6464)))
          ],)
          
                ],
              ),
              Spacer(),
              SizedBox(height: 1.h,),
              Material(
                color: Colors.white,
                elevation: 1.5.w,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.w)),
                child: SvgWidget(svg: Images.svg3))
            ],
          ),
    
        ],
      ),
    );
  }
}
