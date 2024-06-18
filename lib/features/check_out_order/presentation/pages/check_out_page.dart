import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/widget/appBar_container.dart';
import 'package:untitled/features/check_out_order/presentation/widgets/available_coupon_widget.dart';
import 'package:untitled/features/check_out_order/presentation/widgets/center_widget.dart';
import 'package:untitled/features/check_out_order/presentation/widgets/payment_container.dart';
import 'package:untitled/features/check_out_order/presentation/widgets/total_widget.dart';
import 'package:untitled/features/check_out_order/presentation/widgets/widget_of_appBarr_conatiner.dart';
import 'package:untitled/features/check_out_order/presentation/widgets/wrap_conatier_item.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            AppBarrContainer(
              height: 14.h,
              color1: Color(0xff22112E),
              color2: Color(0xff3E1B58),
              widget: Container(
                child: WidgetOfAppbarrConatiner(text: 'checkout',)),
            ),
            SizedBox(height: 1.h,),
            Expanded(child: Container(
              padding: appPadding,
              child:SingleChildScrollView(
                child: Column(children: [Container(
                  child: WrapConatierItem()),
                SizedBox(height: 2.h,),
                CenterWidget(),
                PaymentContainer(),
                AvailableCouponWidget(),
                SizedBox(height: 2.h,),
                TotalWidget()
                
                ],),
              )))
          ],
        ),
      ),
    );
  }
}
