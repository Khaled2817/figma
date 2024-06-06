import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/categories/presentation/provider/categories_provider.dart';

class CategoriesButtons extends StatelessWidget {
  const CategoriesButtons({super.key});

  @override
  Widget build(BuildContext context) {
      var myprovider=Provider.of<CategoriesProvider>(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(width: 3.w,),
          ...List.generate(8, (index)=>InkWell(
          onTap: (){},
          child: Container(
            width: 23.5.w,
            height: 5.5.h,
              margin: EdgeInsets.only(left: 1.5.w),
              decoration: BoxDecoration(
                color:myprovider.changeContainerColor(index),
                borderRadius: BorderRadius.circular(1.w),
                border: Border.all(color:Color(0xffB9C0C9))
              ),
             // padding: appPadding.add(EdgeInsets.only(bottom:3.w )),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Directionality(
                  textDirection:TextDirection.ltr  ,
                  child: Padding(
                    padding:  EdgeInsets.all(2.w),
                    child: Text(
                     myprovider.stringList[index].text ,
                      style: TextStyleClass.normalBoldStyle(color:myprovider.changeTextColor(index)),
                    ),
                  ),
                ),
              ),
            ),
        ))],
      ),
    );
  }
}
