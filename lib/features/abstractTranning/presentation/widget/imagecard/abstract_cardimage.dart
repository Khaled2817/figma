import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/app_color.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/models/abstract_model.dart';

class AbstractImageCard extends StatelessWidget {
AbstractModel abstractModel;
final VoidCallback onTap;
AbstractImageCard({super.key, required this.abstractModel,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:onTap,
      child: Material(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
        child: Container(
          // padding: appPadding,
          width: 46.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.w),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  height: 13.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.5.w),
                      image: DecorationImage(
                          image: AssetImage(
                            abstractModel.image,
                          ),
                          fit: BoxFit.cover))),
              Padding(
                padding: EdgeInsets.all(1.w),
                child: Text(
                abstractModel.title,
                  style: TextStyleClass.normalStyle(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.5.w),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                  abstractModel.description,
                    style:
                        TextStyleClass.smallStyle(color: AppColor.sixthColor),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 2.w, bottom: 1.5.w,top: 1.5.w),
                child: Text(
                 abstractModel.price,
                  style: TextStyleClass.semiBoldStyle(color: AppColor.secColor),
                  //overflow:TextOverflow.ellipsis ,
                ),
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
