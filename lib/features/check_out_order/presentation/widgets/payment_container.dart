import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';

import '../provider/Provider.dart';

class PaymentContainer extends StatelessWidget {
  const PaymentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<CheckOutProvider>(context);
    return Container(
      width: 100.w,
      padding: appPadding,
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(color: Color(0xffD9D9D9)),
              bottom: BorderSide(color: Color(0xffD9D9D9)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "payment",
            style: TextStyleClass.semiStyle(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ...List.generate(
                  myprovider.paymentModeList.length,
                  (index) => Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Row(
                          children: [
                            Text("${myprovider.paymentModeList[index].text}"),
                            SizedBox(
                              width: 3.w,
                            ),
                            Container(
                              height: 5.h,
                              width: 5.w,
                              //  padding: appPadding,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(width: 0.5.w,
                                      color: myprovider.isSelectedBorderColor(
                                          myprovider.paymentModeList[index]))),
                              child: Padding(
                                padding: EdgeInsets.all(0.5.w),
                                child: InkWell(
                                  onTap: () {
                                    myprovider.onTapp(
                                        myprovider.paymentModeList[index]);
                                  },
                                  child: Container(
                                    height: 4.h,
                                    width: 4.w,
                                    decoration: BoxDecoration(
                                        color: myprovider.conatinerColor(
                                            myprovider.paymentModeList[index]),
                                        shape: BoxShape.circle),
                                  ),
                                ),
                              ),
                            )
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
