import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';

class ColumConatiner extends StatelessWidget {
  const ColumConatiner({super.key});

  @override
  Widget build(BuildContext context) {
    var MyProvider = Provider.of<MarketProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Padding(
        padding:  EdgeInsets.all(2.w),
        child: Column(
          children: <Widget>[
            ...List.generate(
                5,
                (index) => Padding(
                  padding:  EdgeInsets.only(top: 2.h),
                  child: Container(
                        width: 100.w,
                        height: 15.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.w),
                            image: DecorationImage(
                                image: AssetImage("${Images.dark2}"),
                                fit: BoxFit.cover)),
                        child: Padding(
                          padding:  EdgeInsets.all(2.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Azure Spanish",
                                style: TextStyleClass.semiHeadBoldStyle(
                                    color: Colors.white),
                              ),
                              Text(
                                "Al Reyad , Hay Elsefrat",
                                style:
                                    TextStyleClass.smallStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                               Image.asset("${Images.p3}"),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                      Image.asset("${Images.p2}"),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                 Image.asset("${Images.p1}"),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                ))
          ],
        ),
      ),
    );
  }
}
