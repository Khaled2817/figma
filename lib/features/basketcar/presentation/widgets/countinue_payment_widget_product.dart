import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/basketcar/presentation/provider/payment_provider.dart';

class CountinuePaymentWidgetProduct extends StatelessWidget {
  const CountinuePaymentWidgetProduct({super.key});

  @override
  Widget build(BuildContext context) {
    // var myprovider = Provider.of<PaymentProvider>(context);
    return Material(
        color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
            elevation: 1.w,
            child: Container(
              // height: 15.h,
              padding: EdgeInsets.symmetric(vertical: 6.w, horizontal: 4.w),
              width: 100.w,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.w)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("${Images.ss88}")
                    ,
                      SizedBox(width: 2.w,),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                 "زيت موبيل",
                                  style: TextStyleClass.headStyle(),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text("2 ليتر",
                                    style: TextStyleClass.headStyle(
                                        color: Color(0xffE3BB47))),
                                Spacer(),
                                Image.asset("${Images.basketremov}")
                              ],
                            ),
                            Text(
                               "مع 1 لتر إضافي · 4.64.6 من 5 نجوم (154). تم شراء 100+ سلعة في ",
                              style: TextStyleClass.normalStyle(
                                  color: Color(0xff6B6464)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Row(children: <Widget>[SvgWidget(svg: Images.plus),
                        SizedBox(width:3.w,),
                        Text( "1"),
                        SizedBox(width: 3.w,),
                       SvgWidget(svg: Images.min)],),
                        Text( "200 ريال",style: TextStyleClass.semiStyle(
                                  color: Color(0xffE3BB47)),),
                      
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
  }
}