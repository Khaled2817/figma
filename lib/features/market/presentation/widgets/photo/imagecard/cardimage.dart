import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/app_color.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_funct/navigation.dart';
import 'package:untitled/features/Product/presentation/pages/productPage.dart';
class ImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        //  MyProvider.Addbasket(MyProvider.listMarket[1]);
        navP(ProductPage());
      },
      child: Material(
        elevation: 3,
        child: Container(
          padding: appPadding,
          width: 46.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.w),
              ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  height: 12.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(
                            "${Images.foodd}",
                          ),
                          fit: BoxFit.cover))),
              Padding(
                padding: EdgeInsets.all(1.w),
                child: Text(
                  "بيتزا خضار مع اضافة صوصات",
                  style: TextStyleClass.normalBoldStyle(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                "وصف عن المنتج وصف عن المنتج"*2,
                style: TextStyleClass.normalStyle(color: AppColor.sixthColor),
                //overflow:TextOverflow.ellipsis ,
              ),
              Text(
                "ر.س25",
                style: TextStyleClass.semiBoldStyle(color: AppColor.secColor),
                //overflow:TextOverflow.ellipsis ,
              ),
              SizedBox(
                height: 2.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
