import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';

class ProductBanner extends StatelessWidget {
  const ProductBanner({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: 23.h,
                autoPlayInterval: const Duration(seconds: 10),
                viewportFraction: 1,
                enableInfiniteScroll: true,
                autoPlay: true,
                onPageChanged: (i, p) {}),
            items: List.generate(3, (i) {
              return InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    SizedBox(height: 1.h),
                    Container(
                      width: 100.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.transparent),
                      child: Column(
                        children: [
                          Container(
                            width: 100.w,
                            height: 22.h,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.w),
                              image: DecorationImage(
                                image: AssetImage("${Images.food2}"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 2.h),
                                    child: Container(
                                      height: 5.h,
                                      width: 20.w,
                                      color: Colors.black,
                                      child: Row(
                                        children: [
                                          Text(
                                            " 22 k ",
                                            style: TextStyleClass.semiBoldStyle(
                                                color: Colors.white),
                                          ),
                                          Image.asset("${Images.shar}")
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
          SizedBox(height: 1.h),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  3,
                  (i) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.w),
                      child: i == i
                          ? Container(
                              height: 3.w,
                              width: 3.w,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.green),
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(2.w)))
                          : Container(
                              height: 3.w,
                              width: 3.w,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  border: Border.all(
                                      color: Colors.grey.shade200, width: 2.0),
                                  borderRadius: BorderRadius.circular(2.w)))))),
        ],
      ),
    );
  }
}
