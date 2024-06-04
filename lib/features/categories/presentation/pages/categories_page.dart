import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/categories/presentation/widgets/categories_bottoms.dart';
import 'package:untitled/features/market/presentation/widgets/Cards/cardwrap.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title:Text("الفئة",style: TextStyleClass.normalBoldStyle(),),centerTitle: true,),
body: Container(
  height: 100.h,
  width: 100.w,
  child: SingleChildScrollView(
    child: Column(
      
      children: <Widget>[
    
    CategoriesButtons(),
    SizedBox(height: 2.h,),
    Container(
      padding: appPadding,
      child: CardWrap())
    
    ],),
  ),
),
    );
  }
}