import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/features/banner/presentation/provider/provider.dart';

class BannerResturantWidget extends StatelessWidget {
  const BannerResturantWidget({super.key});
  @override
  Widget build(BuildContext context) {
    var bannerProvider = Provider.of<BannerProvider>(context);
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
                onPageChanged: (i, p) {bannerProvider.changeIndex(i);}),
            items: List.generate(bannerProvider.bannersList?.length ?? 3, (i) {
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
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "${bannerProvider.bannersList?[i].image ?? "https://maijz.frmawy.tech/public/images/banners/1716418494_banners.jpg"}"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 2.h),
                                child: Text(
                                  "${bannerProvider.bannersList?[i].name ?? "khaled"}",
                                  style: TextStyleClass.semiHeadBoldStyle(
                                      color: Colors.white),
                                ),
                              ),
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
                  bannerProvider.bannersList?.length??2,
                  (i) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.w),
                      child: i ==bannerProvider.index?
                           Container(
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
                                  borderRadius: BorderRadius.circular(2.w)))
                                  ))),
        ],
      ),
    );
  }
}
