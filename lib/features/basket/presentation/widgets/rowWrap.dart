import 'package:flutter/material.dart';
import 'package:untitled/config/text_style.dart';

class Rowwrap extends StatelessWidget {
  const Rowwrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Text("ر.س 25",style: TextStyleClass.normalStyle(color: Color(0xff868889)),),
    Spacer(),
    Text("المجموع",style: TextStyleClass.normalStyle(color: Color(0xff868889)),)],);
  }
}