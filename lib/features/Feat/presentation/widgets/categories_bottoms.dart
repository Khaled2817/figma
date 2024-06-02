import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';

class CategoriesButtons extends StatelessWidget {
  const CategoriesButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[...List.generate(8, (index)=>ButtomElevatedButton())],
      ),
    );
  }
}

Widget ButtomElevatedButton() {
  return Container(
    margin: EdgeInsets.all(2.w),
    decoration: BoxDecoration(
      color:Colors.white ,
      borderRadius: BorderRadius.circular(2.w),
      border: Border.all(color: Colors.black)
    ),
    padding: appPadding.add(EdgeInsets.only(bottom:3.w )),
    child: InkWell(
        onTap: () {},
        child: Text(
          "فئة فرعية",
          style: TextStyleClass.normalStyle(),
        )),
  );
}
