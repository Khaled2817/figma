import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/features/paymentcarapp/presentation/provider/payment_provider.dart';

class CheckContainerWidget extends StatelessWidget {
  const CheckContainerWidget({super.key, required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<PaymentProvideroil>(context);
    return Container(
                              height: 5.h,
                              width: 5.w,
                              //  padding: appPadding,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(width: 0.5.w,
                                      color: myprovider.isSelectedBorderColor(
                                          myprovider.paymentModeList[index]))
                                          ),
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
                            );
  }
}