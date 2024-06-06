import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/orders/presentation/widgets/container_order.dart';
import 'package:untitled/features/orders/presentation/widgets/statuscontainer.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      leading: Icon(Icons.arrow_back_ios),
        title:Text("طلباتي",style:TextStyleClass.semiHeadBoldStyle(),),centerTitle: true,),
      body: Container(
        width: 100.w,
        height: 100.w,
        padding: appPadding,
        child: SingleChildScrollView(child: Column(children: <Widget>[const OrderContainer(),
        SizedBox(height: 2.h,),
        const StatusContainer()
        ],)),
      ),
    );
  }
}
