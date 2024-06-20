import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/order_oil/presentation/widgets/colum_list_item_widget.dart';
import 'package:untitled/features/order_oil/presentation/widgets/container_itme_details_widget.dart';

class OrdersOilPage extends StatelessWidget {
  const OrdersOilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE3BB47),
        toolbarHeight: 10.h,
        leading:SvgWidget(svg: Images.ordersoil,),
        title: Text(
          "الطلابات",
          style: TextStyleClass.bigStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: appPadding,
        height: 100.h,width: 100.w,
      child: SingleChildScrollView(child:Column(children: <Widget>[
ColumListItemWidget()

      ],),),),
    );
  }
}
