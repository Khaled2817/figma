import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/searchproductoil/presentation/widgets/textfild_search_widget.dart';
import 'package:untitled/features/sections/presentation/widgets/wrap_sections_widget.dart';

class SearchProductPage extends StatelessWidget {
  const SearchProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 10.h,
        backgroundColor: Color(0xffE3BB47),
        title: Text(
          "ابحث في المنتجات",
          style: TextStyleClass.bigStyle(color: Colors.white),
        ),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        padding: appPadding,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextfildSearchWidget(),
              SizedBox(height: 2.h,),
              WrapSectionsWidget()
            ],
          ),
        ),
      ),
    );
  }
}
