import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/widget/rating_widget.dart';
import 'package:untitled/features/order_oil_details/presentation/widgets/column_details_oeder_widget.dart';
import 'package:untitled/features/order_oil_details/presentation/widgets/dilvary_conatiner_name_widget.dart';
import 'package:untitled/features/order_oil_details/presentation/widgets/image_order_widget.dart';
import 'package:untitled/features/order_oil_details/presentation/widgets/person_call_widget.dart';
import 'package:untitled/features/order_oil_details/presentation/widgets/present_bar_widget.dart';
import 'package:untitled/features/order_oil_details/presentation/widgets/showbuttom_bar_widget.dart';

class OrderOilDetailsPage extends StatelessWidget {
  const OrderOilDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE3BB47),
        toolbarHeight: 8.h,
        title: Text(
          "تفاصيل الطلب",
          style: TextStyleClass.bigStyle(color: Colors.white),
        ),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        padding: appPadding,
        child: SingleChildScrollView(
          child: Container(
            padding: appPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 4.h,
                ),
                DilvaryConatinerNameWidget(),
                SizedBox(
                  height: 2.h,
                ),
                PresentBarWidget(),
                SizedBox(
                  height: 2.h,
                ),
                PersonCallWidget(),
                SizedBox(
                  height: 2.h,
                ),
                ColumnDetailsOederWidget(),
                SizedBox(
                  height: 2.h,
                ),
                ImageOrderWidget(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
