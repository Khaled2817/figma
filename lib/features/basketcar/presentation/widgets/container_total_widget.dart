import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';

class ContainerTotalWidgetPayment extends StatelessWidget {
  const ContainerTotalWidgetPayment(
      {super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(vertical: 3.w,horizontal: 5.w) ,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xffF1ECEC)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          
         
        Container(
            child: Row(
              children: [
                Text(
                  "${text1}",
                  style: TextStyleClass.semiHeadStyle(),textAlign:TextAlign.left ,
                ),])),
                Spacer(),
                 Text(
            "${text2}",
            style: TextStyleClass.semiHeadStyle(color: Color(0xffE3BB47)),
          ),


        ],
      ),
    );
  }
}
