import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';

class OrderDetailWidget extends StatelessWidget {
  const OrderDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 2.5.h,
                          width: 5.w,
                          decoration: BoxDecoration(
                              color: Color(0xff474849),
                              shape: BoxShape.rectangle),
                          child: Center(
                              child: Text(
                            "1",
                            style: TextStyleClass.semiStyle(
                                color: Color(0xffE3BB47)),
                            textAlign: TextAlign.center,
                          )),
                        ),
                        SizedBox(width: 2.w,),
                        Text(
                  "زيت موبيل",
                  style: TextStyleClass.semiStyle(),
                ),
                 SizedBox(width: 2.w,),
                 Text(
                            "3 ليتر",
                            style: TextStyleClass.semiStyle(
                                color: Color(0xffE3BB47)),
                            textAlign: TextAlign.center,
                          )

                      ],
                    ),
                    SizedBox(height: 1.h,),
                     Row(
                      children: <Widget>[
                        Container(
                          height: 2.5.h,
                          width: 5.w,
                          decoration: BoxDecoration(
                              color: Color(0xff474849),
                              shape: BoxShape.rectangle),
                          child: Center(
                              child: Text(
                            "2",
                            style: TextStyleClass.semiStyle(
                                color: Color(0xffE3BB47)),
                            textAlign: TextAlign.center,
                          )),
                        ),
                        SizedBox(width: 2.w,),
                        Text(
                  "خدمات اضافيه",
                  style: TextStyleClass.semiStyle(),
                ),
                 

                      ],
                    )
                  ],
                ));
  }
}