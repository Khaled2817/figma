import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/app_color.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_funct/navigation.dart';
import 'package:untitled/core/widget/Svg_Icon/svg_widget.dart';
import 'package:untitled/features/wallet/presentation/pages/walletpage.dart';

class StatusContainer extends StatelessWidget {
  const StatusContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 0.2.w,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
      child: Container(
        width: 100.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.w),
           ),
        child: Padding(
          padding: EdgeInsets.all(5.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          // مبتتعرضش // SvgWidget(svg:Images.shopp) ,
          Image.asset("${Images.talabat}"),
             SizedBox(width: 3.5.w,),
         Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Text("ID 3423534",style: TextStyleClass.smallStyle(color: AppColor.sixthColor),),
          SizedBox(height: 1.h,),
          Text("Azure Spanish",style: TextStyleClass.smallStyle(),),
          SizedBox(height: 1.h,),
          Row(
            children: [
              Text("Status : ",style: TextStyleClass.smallStyle(),),
               Text("Abrouv",style: TextStyleClass.smallStyle(color:Color(0xff61A300)),)
            ],
          )
          
          ],),
                Spacer()  ,
                  Column(children: <Widget>[
                    
                    Row(crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                       SvgWidget(svg: Images.time,height:2.8.h ,),
                       SizedBox(width: 1.w,),
                       Text("2024/5/12",style: TextStyleClass.smallStyle(color:Color(0xffA8A8A8)),)
                      ],
                    ),
                    SizedBox(height: 0.2.h,),
                    Text("\$ 12.00",style: TextStyleClass.normalStyle(color:Color(0xffB983E7)))
                    
                    ],)
                     ],
          
          ),
        ),
      ),
    );
  }
}