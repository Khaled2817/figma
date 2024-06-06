import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/features/categories/presentation/pages/categories_page.dart';
import 'package:untitled/features/banner/presentation/widgets/banner_resturant_widget.dart';
import 'package:untitled/features/home/presentation/widgets/AppBar.dart';
import 'package:untitled/features/home/presentation/widgets/floataction_row.dart';
import 'package:untitled/features/home/presentation/widgets/wrap_subcategories_widgets.dart';
import 'package:untitled/features/market/presentation/widgets/Cards/cardwrap.dart';

class HomePageApp extends StatelessWidget {
  const HomePageApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      // floatingActionButton: const FloatingButtomRow(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        height: 100.h,
        width: 100.w,
        padding: appPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Appbar(),
              const BannerResturantWidget(),
              SizedBox(
                height: 2.h,
              ),
              //  Padding(
              //    padding: const EdgeInsets.all(8.0),
              //    child: InkWell(
              //     onTap: (){
              //    MyProvider.changeName();
              //     },
              //     child: Text(
              //       "${MyProvider.khaled}",
              //       style: TextStyleClass.semiBoldStyle(),
              //     ),
              //                  ),
              //  ),
              InkWell(
                onTap: () {
                  navP(const Categories());
                },
                child: Text(
                  "الفئات",
                  style: TextStyleClass.semiBoldStyle(),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              const WrapSubCategoriesWidgets(),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "المطاعم الايطالية ",
                style: TextStyleClass.semiBoldStyle(),
              ),
              SizedBox(
                height: 2.h,
              ),
              const CardWrap()
            ],
          ),
        ),
      ),
    );
  }
}
