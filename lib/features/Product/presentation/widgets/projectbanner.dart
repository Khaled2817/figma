import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/features/Product/presentation/productprovider.dart';

class ProductBanner extends StatelessWidget {
  const ProductBanner({super.key});
  @override
  Widget build(BuildContext context) {
       var myProvider = Provider.of<ProductProvider>(context);
    return Material(
      color: Colors.white,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(2.w)) ,
      child: Container(
        width: 100.w,
         //   padding: EdgeInsets.all(2.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.w),
            color: Colors.transparent,
             ),
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: 30.h,
                  autoPlayInterval: const Duration(seconds: 10),
                  viewportFraction: 1,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  onPageChanged: (i, p) {myProvider.changeIndex(i);}),
              items: List.generate(myProvider.marketImagelist.length, (i) {
                return InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      SizedBox(height: 1.h),
                      Container(
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.w),
                            color: Colors.transparent),
                        child: Column(
                          children: [
                            Container(
                              width: 100.w,
                              height: 26.h,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2.w),
                                image: DecorationImage(
                                  image: myProvider.marketImagelist[i].image,
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
                                        child: Padding(
                                          padding:  EdgeInsets.all(2.w),
                                          child: Row(
                                            children: [
                                             
                                              Image.asset(Images.shar),
                                               Text(
                                                "  22k",
                                                style: TextStyleClass.semiBoldStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
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
                   myProvider.marketImagelist.length,
                    (i) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1.w),
                        child: i == myProvider.index
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
      ),
    );
  }
}
