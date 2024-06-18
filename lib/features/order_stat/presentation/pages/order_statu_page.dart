import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/features/order_stat/presentation/provider/orderstatus_provider.dart';
import 'package:untitled/features/order_stat/presentation/widgets/buy_conatiner.dart';
import 'package:untitled/features/order_stat/presentation/widgets/colum_wrap.dart';
import 'package:untitled/features/order_stat/presentation/widgets/container_top2.dart';
import 'package:untitled/features/order_stat/presentation/widgets/top_container.dart';
import 'package:untitled/features/orders/presentation/provider/order_provider.dart';

class OrderStatuPage extends StatelessWidget {
  const OrderStatuPage({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider=Provider.of<OrderstatusProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1.w,
        title: Text("Order Status"),
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 2.w),
            child: Row(
              children: [
                InkWell(onTap:(){
                 myprovider.goTo();
                },child: Image.asset("${Images.appbar1}")),
                SizedBox(
                  width: 1.w,
                ),
                Image.asset("${Images.appbar2}")
              ],
            ),
          ),
        ],
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        padding: appPadding,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 5.h,),
TopContainer(),
SizedBox(height: 2.h,),
ContainerTop2(),
SizedBox(height: 2.h,),
 ColumWrap(),
 SizedBox(height: 2.h,),
 BuyConatiner()

            ],
          ),
        ),
      ),
    );
  }
}
