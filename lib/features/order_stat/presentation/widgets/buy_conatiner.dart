import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';

class BuyConatiner extends StatelessWidget {
  const BuyConatiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 100.w,
    height: 20.h,
padding: appPadding,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 220, 236, 241),
      borderRadius: BorderRadius.circular(2.w)
    ),
    child: Column(children: <Widget>[

Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: <Widget>[Row(children: [

Row(
  children: [
    Text("2.00 \$",style:TextStyleClass.smallStyle(color: Color(0xff581D8A)),),
    SizedBox(width:13.w,),
    Text("= 1x200",style:TextStyleClass.smallStyle(),),
  ],
),
Spacer(),
Text("1 x Burger chicken",style:TextStyleClass.semiStyle(),),


],),
Text("Removable :  Tomato - Green",style:TextStyleClass.tinyStyle(color: Color(0xffA2A2A2)),),
Text("Add :  Tomato - Green",style:TextStyleClass.tinyStyle(color:Color(0xffA2A2A2)),),

],),
SizedBox(height: 1.h,),
Row(children: [
  Text("12.00 \$",style:TextStyleClass.normalStyle(color: Color(0xff581D8A))),
  Spacer(),
  Text("Taxsis",style:TextStyleClass.normalStyle()),
  
  ],),
  SizedBox(height: 0.5.h,),
  Row(children: [
  Text("2.00 \$",style:TextStyleClass.normalStyle(color: Color(0xff581D8A))),
  Spacer(),
  Text("Delivery ",style:TextStyleClass.normalStyle()),
  
  ],),
  SizedBox(height: 1.h,),
  Container(
    width: 100.w,
    height: 0.5,
    color:Color.fromARGB(255, 189, 218, 237),)
,
    Expanded(child: Row(children: [  Row(
      children: [
          Text("\$ ",style:TextStyleClass.normalStyle(color: Color(0xff581D8A))),
        Text("10.7",style:TextStyleClass.headStyle(color: Color(0xff581D8A))),
      ],
    ),
  Spacer(),
  Text("Total ",style:TextStyleClass.headStyle())],))
    ],),
    );
  }
}