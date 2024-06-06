import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
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
      floatingActionButton: const FloatingButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          elevation: 0,
          title: Text(
            "اسم المنتج",
            style: TextStyleClass.headBoldStyle(),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.all(2.w),
              child: Row(
                children: [
                  Text("22k"),
                  SizedBox(
                    width: 2.w,
                  ),
                  Image.asset(Images.eye),
                ],
              ),
            ),
          ]),
      body: Container(
        width: 100.w,
        height: 100.h,
        padding: appPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProductBanner(),
              SizedBox(
                height: 2.h,
              ),
              const Directionality(
                  textDirection: TextDirection.rtl,
                  child: ProductDiscountDetails()),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "وصف عن المنتج " * 20,
                style: TextStyleClass.semiStyle(color: Colors.grey),
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
