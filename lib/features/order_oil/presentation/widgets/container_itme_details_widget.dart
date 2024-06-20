import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';

import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/order_oil/presentation/provider/orders_provider_oil.dart';

class ContainerItmeDetailsWidget extends StatelessWidget {
  const ContainerItmeDetailsWidget({super.key, required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    var myprovider=Provider.of<OrdersProviderOil>(context);
    return Padding(
      padding:  EdgeInsets.only(bottom: 3.w),
      child: InkWell(
        onTap: (){myprovider.goTo();},
        child: Container(
          padding: EdgeInsets .symmetric(vertical: 0.5.h,horizontal: 2.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.w),
              border: Border.all(color: Color(0xffE3BB47))),
          child: Row(
            children: <Widget>[
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [ Container(
                clipBehavior: Clip.antiAlias,
                height: 10.h,
                width: 15.w,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: myprovider.OrderModelDetailList[index].widget1,
              ),
                 SizedBox(width: 2.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 1.5.h,),
                  Row(
                children: [
                  Text("${myprovider.OrderModelDetailList[index].text1}",style:TextStyleClass.normalStyle()),
                  SizedBox(width: 1.w,),
                  Text("${myprovider.OrderModelDetailList[index].text2}",style:TextStyleClass.normalStyle(color: Color(0xffE3BB47))),
                ],
              ),
              
              Text("${myprovider.OrderModelDetailList[index].text3}",style:TextStyleClass.normalStyle(color: Color(0xffE3BB47))),
            Row(
                children: [
                  Text("${myprovider.OrderModelDetailList[index].text4}",style:TextStyleClass.normalStyle()),
                  Text("${myprovider.OrderModelDetailList[index].text5}",style:TextStyleClass.normalStyle()),
                ],
              )
              ],)],),
        Spacer(),
              Column(children: <Widget>[
                SizedBox(height: 1.h,),
                Text("${myprovider.OrderModelDetailList[index].text6}",style:TextStyleClass.normalStyle(color: Color(0xffE3BB47)))],),
                SizedBox(width: 2.w,),
              Column(children: [Row(
                children: [
                  Text("${myprovider.OrderModelDetailList[index].text7}",style:TextStyleClass.tinyStyle(color: Color(0xffA8A8A8))),
                  SizedBox(width: 1.w,),
                 myprovider.OrderModelDetailList[index].widget2
                ],
              ),
             SizedBox(height: 1.h,),
               myprovider.OrderModelDetailList[index].widget3
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
