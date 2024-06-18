import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/paymentcarapp/presentation/provider/payment_provider.dart';
import 'package:untitled/features/paymentcarapp/presentation/widgets/check_container_widget.dart';
class PaymentContainercar extends StatelessWidget {
  const PaymentContainercar({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<PaymentProvideroil>(context);
    return Container(
      width: 100.w,
      padding: appPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "وسائل الدفع",
            style: TextStyleClass.semiStyle(),
          ),
          SizedBox(height: 2.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ...List.generate(
                  myprovider.paymentModeList.length,
                  (index) => Padding(
                        padding: EdgeInsets.only(left: 2.w),
                        child: Row(
                          children: [
                             CheckContainerWidget(index: index,),
                             SizedBox(width: 1.w,),
                            Text("${myprovider.paymentModeList[index].text}",style: TextStyleClass.semiStyle(),),
                          
                            
                          ],
                        ),
                      ))
            ],
          )
        ],
      ),
    );
  }
}
