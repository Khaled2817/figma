import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/order_oil_details/presentation/widgets/order_detail_widget.dart';
import 'package:untitled/features/order_oil_details/presentation/widgets/ored_number_widget.dart';
import 'package:untitled/features/order_oil_details/presentation/widgets/visa_widget.dart';

class ColumnDetailsOederWidget extends StatelessWidget {
  const ColumnDetailsOederWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     padding:EdgeInsets.symmetric(horizontal: 2.w),
      child: Column(
        children: <Widget>[
       OredNumberWidget(),
          SizedBox(
            height: 2.h,
          ),
       VisaWidget(),
          SizedBox(
            height: 2.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SvgWidget(
                svg: Images.donn,
                color: Color(0xffE3BB47),
              ),
              SizedBox(
                width: 2.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "تفاصيل الطلب",
                    style: TextStyleClass.semiStyle(),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                 OrderDetailWidget()
                ],
              ),
             
            ],
          ),
           SizedBox(
                    height: 3.h,
                  ),
           Row(children: <Widget>[SvgWidget(svg: Images.carIconIamge),
           SizedBox(width: 2.w,), Text(
                    "صور الطلب",
                    style: TextStyleClass.semiStyle(),
                  ),],)
        ],
      ),
    );
  }
}
