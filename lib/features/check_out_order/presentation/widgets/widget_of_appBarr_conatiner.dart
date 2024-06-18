import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';

class WidgetOfAppbarrConatiner extends StatelessWidget {
  const WidgetOfAppbarrConatiner({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
      Padding(
        padding:EdgeInsets.all(4.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)],),
      ),
      Spacer(),
Padding(
  padding: EdgeInsets.only(left: 9.w,bottom: 5.w),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [Text("${text}",style: TextStyleClass.semiBigBoldStyle(color: Colors.white),),
  Container(
    height: 0.3.h,
    width: 15.w,
    decoration:BoxDecoration(color: Colors.white) ,),],)],),
)
    ],);
  }
}