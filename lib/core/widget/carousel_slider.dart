import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';

class CarouselSliderWidget extends StatelessWidget {
  Function changeindex;
  int listlength;
  ImageProvider image;
  String text;
  int smootherLength;
  int indexSmoother;
  CarouselSliderWidget(
      {super.key,
      required this.changeindex,
      required this.image,
      required this.listlength,
      required this.text,
      required this.smootherLength,
      required this.indexSmoother
      });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            width: 100.w,
            child: CarouselSlider(
              options: CarouselOptions(
                  height: 20.h,
                  autoPlayInterval: const Duration(seconds: 10),
                  viewportFraction: 1,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  onPageChanged: (i, p) {
                   changeindex();
                  }),
              items:
                  List.generate(listlength ?? 3, (i) {
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
                              height: 19.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: image,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 2.h),
                                  child: Text(
                                   text ??
                                        " ",
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
          ),
          // SizedBox(height: 1.h),
          // Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: List.generate(
          //        smootherLength ?? 2,
          //         (i) => Padding(
          //             padding: EdgeInsets.symmetric(horizontal: 1.w),
          //             child: i == indexSmoother
          //                 ? Container(
          //                     height: 3.w,
          //                     width: 3.w,
          //                     decoration: BoxDecoration(
          //                         border: Border.all(color: Colors.green),
          //                         color: Colors.green,
          //                         borderRadius: BorderRadius.circular(2.w)))
          //                 : Container(
          //                     height: 3.w,
          //                     width: 3.w,
          //                     decoration: BoxDecoration(
          //                         color: Colors.grey.shade200,
          //                         border: Border.all(
          //                             color: Colors.grey.shade200, width: 2.0),
          //                         borderRadius: BorderRadius.circular(2.w)))))
                                  
          //                         ),
        ],
      ),
    );
  }
}
