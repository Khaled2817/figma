import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/Colors.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_funct/navigation.dart';
import 'package:untitled/features/Product/presentation/widgets/projectbanner.dart';
import 'package:untitled/features/basket/presentation/pages/basketdetails.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "اسم المنتج",
            style: TextStyleClass.normalBoldStyle(),
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
              Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 0.w,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "رس 2.3",
                          style: TextStyleClass.semiHeadStyle(
                              color: Color(0xff25A189)),
                          children: [
                        TextSpan(
                            text: "\nرس 2.3",
                            style: TextStyleClass.normalLineThroughStyle(color: Color(0xffE97053)))
                      ])),
                  Spacer(),
                  Text(" بيتزا خضار مع اضافة صوصات",
                      style: TextStyleClass.semiBoldStyle(
                          color: Color(0xff264653))),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("  وصف عن المنتج وصف عن المنتج",
                      style: TextStyleClass.normalStyle()),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () => navP(BasketDetails()),
                child: Container(
                  height: 6.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      color: Color(0xff264653),
                      borderRadius: BorderRadius.circular(2.w)),
                  child: Center(
                      child: Text(
                    "اضف الي السلة",
                    style: TextStyleClass.normalBoldStyle(color: Colors.white),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
