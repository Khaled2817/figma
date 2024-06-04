import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/app_color.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/features/Product/presentation/widgets/floatingButtom.dart';
import 'package:untitled/features/Product/presentation/widgets/product_discount_details.dart';
import 'package:untitled/features/Product/presentation/widgets/projectbanner.dart';


class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingButtom() ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
          title: Text(
            "اسم المنتج",
            style: TextStyleClass.headBoldStyle(),
          ),
          centerTitle: true,
          actions: [
            Image.asset("${Images.eye}"),
            Padding(
              padding: EdgeInsets.all(2.w),
              child: Text("22k"),
            )
          ]),
      body: Container(
        width: 100.w,
        height: 100.h,
        padding: appPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProductBanner(),
              Directionality(textDirection:TextDirection .rtl ,
              child: ProductDiscountDetails()),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("   وصف عن المنتج وصف عن المنتج",
                      style: TextStyleClass.normalStyle(color: Colors.grey)),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              // InkWell(
              //   onTap: () => navP(BasketDetails()),
              //   child: Container(
              //     height: 6.h,
              //     width: 80.w,
              //     decoration: BoxDecoration(
              //         color: Color(0xff264653),
              //         borderRadius: BorderRadius.circular(2.w)),
              //     child: Center(
              //         child: Text(
              //       "اضف الي السلة",
              //       style: TextStyleClass.normalBoldStyle(color: Colors.white),
              //     )),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
