import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/helper_funct/navigation.dart';
import 'package:untitled/features/Feat/presentation/pages/categories_page.dart';
import 'package:untitled/features/banner/presentation/widgets/banner_resturant_widget.dart';
import 'package:untitled/features/home/presentation/widgets/AppBar.dart';
import 'package:untitled/features/home/presentation/widgets/wrap_subcategories_widgets.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';
import 'package:untitled/features/market/presentation/widgets/Cards/cardwrap.dart';

class HomePageApp extends StatelessWidget {
  const HomePageApp({super.key});

  @override
  Widget build(BuildContext context) {
    var MyProvider = Provider.of<MarketProvider>(context);
    return Container(
      height: 100.h,
      width: 100.w,
      padding: appPadding,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              height: 10.h,
            ),
            Appbar(),
            BannerResturantWidget(),
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
                navP(Categories());
              },
              child: Text(
                "الفئات",
                style: TextStyleClass.semiBoldStyle(),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            WrapSubCategoriesWidgets(),
            SizedBox(
              height: 1.h,
            ),
            Text(
              "المطاعم الايطالية ",
              style: TextStyleClass.semiBoldStyle(),
            ),
            SizedBox(
              height: 1.h,
            ),
            CardWrap()
          ],
        ),
      ),
    );
  }
}
