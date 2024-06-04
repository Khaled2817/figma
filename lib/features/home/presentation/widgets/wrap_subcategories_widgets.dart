import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/features/home/presentation/provider/homeprovider.dart';
class WrapSubCategoriesWidgets extends StatelessWidget {
  const WrapSubCategoriesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<HomeProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing:3.w,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
      ...List.generate(myProvider.categoriesCard.length, (index) => Material(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)), 
      child: Container(
        margin: EdgeInsets.all(3.w),
        width: 16.w,
        padding: EdgeInsets.all(1.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.w),
            ),
        child:  Column(
          children: <Widget>[
            Image(image:myProvider.categoriesCard[index].image),
            Text("${myProvider.categoriesCard[index].catigorName}",
            style:TextStyleClass.smallBoldStyle(color: const Color.fromARGB(255, 0, 0, 0)))
          ],
        ),
      ),
    ))
      ],),
    );
  }
}