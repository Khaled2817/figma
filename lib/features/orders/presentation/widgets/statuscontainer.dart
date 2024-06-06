import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/app_color.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';

class StatusContainer extends StatelessWidget {
  const StatusContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 0.2.w,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
      child: Container(
        width: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.w),
        ),
        child: Padding(
          padding: EdgeInsets.all(5.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // مبتتعرضش // SvgWidget(svg:Images.shopp) ,
             
              
              Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                        "2024/5/12",
                        style:
                            TextStyleClass.smallStyle(color: const Color(0xffA8A8A8)),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      SvgWidget(
                        svg: Images.time,
                        height: 2.5.h,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 0.2.h,
                  ),
                  Text("12.00 \$",
                      style:
                          TextStyleClass.normalStyle(color: const Color(0xffB983E7)))
                ],
              ),
              const Spacer(),
               Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "ID 3423534",
                    style:
                        TextStyleClass.smallStyle(color: AppColor.sixthColor),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "Azure Spanish",
                    style: TextStyleClass.smallStyle(),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Status : ",
                        style: TextStyleClass.smallStyle(),
                      ),
                      Text(
                        "Abrouv",
                        style:
                            TextStyleClass.smallStyle(color: const Color(0xff61A300)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 3.5.w,
              ),
              Image.asset(Images.talabat)
            ],
          ),
        ),
      ),
    );
  }
}
