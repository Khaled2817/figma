import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';

class ContainerTotalWidget extends StatelessWidget {
  const ContainerTotalWidget(
      {super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(vertical: 3.w,horizontal: 2.w) ,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xffF1ECEC)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          
          Text(
            "${text2}",
            style: TextStyleClass.semiHeadStyle(color: Color(0xff581D8A)),
          ),
          Container(
            width: 35.w,
            child: Text(
              
              "${text1}",
              style: TextStyleClass.semiHeadStyle(),textAlign:TextAlign.left ,
            ),
          )
        ],
      ),
    );
  }
}
