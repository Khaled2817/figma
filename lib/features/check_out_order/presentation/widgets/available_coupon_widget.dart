import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/check_out_order/presentation/provider/Provider.dart';
import 'package:untitled/features/check_out_order/presentation/widgets/copon_conatiner_widget.dart';

class AvailableCouponWidget extends StatelessWidget {
  const AvailableCouponWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<CheckOutProvider>(context);
    return Container(
      width: 100.w,
      height: 10.h,
      padding: appPadding,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xffD9D9D9)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Available Coupon",
            style: TextStyleClass.semiStyle(),
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ...List.generate(
                  myprovider.paymentModeList.length,
                  (index) => CoponConatinerWidget(
                    index: index,
                        text: myprovider.coponModellist[index].text,
                        widget: myprovider.coponModellist[index].widget,
                      ))
            ],
          )
        ],
      ),
    );
  }
}
