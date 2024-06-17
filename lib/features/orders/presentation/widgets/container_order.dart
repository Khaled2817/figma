import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/app_color.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/features/orders/presentation/provider/order_provider.dart';

class OrderContainer extends StatelessWidget {
  const OrderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider=Provider.of<OrderProvider>(context);
    return Material(
      elevation: 1.w,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
      color: Colors.white,
      child: Container(
       
        width: 100.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.w),
            ),
        child: Padding(
          padding:  EdgeInsets.all(3.w),
          child: Row(
            children: [
               Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "اسم المنتج",
                        style: TextStyleClass.semiHeadBoldStyle(),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text("22.12 ر.س ",
                          style: TextStyleClass.normalBoldStyle(
                              color: const Color(0xff25A189)))
                    ],
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  CircleAvatar(
                    radius: 5.h,
                    backgroundColor: Colors.white,
                    child: Image.asset(Images.tee),
                  )
                ],
              ),
                 const Spacer(),
                   Container(height: 6.h,
                 width: 35.w,
               decoration: BoxDecoration(  color:AppColor.secColor,
               borderRadius: BorderRadius.circular(2.w)
               ),
                 child: Center(child: Text("تتبع الطلب",style:TextStyleClass.semiStyle(color: Colors.white),)),
                 )
             
            ],
          ),
        ),
      ),
    );
  }
}