import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/features/basketcar/presentation/provider/payment_provider.dart';
import 'package:untitled/features/basketcar/presentation/widgets/container_total_widget.dart';

class TotalPaymentWidget extends StatelessWidget {
  const TotalPaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<PaymentProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Column(
        children: <Widget>[
          Material(
            elevation: 0.5.w,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
            child: Container(
              padding: appPadding,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.w)),
              child: Column(
                children: [
                  ...List.generate(
                      myprovider.supTotalModelList.length,
                      (index) => ContainerTotalWidgetPayment(
                            text1: myprovider.supTotalModelList[index].text1,
                            text2: myprovider.supTotalModelList[index].text2,
                          )),
                          SizedBox(height: 20.h,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
