import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/check_out_order/presentation/pages/check_out_page.dart';
import 'package:untitled/features/order_stat/data/models/orderstatus_model.dart';

class OrderstatusProvider extends ChangeNotifier {


void goTo(){
  navP(CheckOutPage());
}

  List<OrderstatusModel> orderstatusModelList = [
    OrderstatusModel(
        icon: SvgWidget(svg: Images.o2),
        text1: 'Location',
        text2: 'Sate 2 / ksa club'),
    OrderstatusModel(
        icon: SvgWidget(svg: Images.o3),
        text1: 'Order Date',
        text2: '12-2-2023'),
    OrderstatusModel(
        icon: SvgWidget(svg: Images.o4),
        text1: 'Order Time',
        text2: '10 : 35 am'),
    OrderstatusModel(
        icon: SvgWidget(svg: Images.o5),
        text1: 'Payment method',
        text2: 'Credit Card 2345*******'),
    OrderstatusModel(
        icon: SvgWidget(svg: Images.o6),
        text1: 'Order Details',
        text2:'add caramel sause to the chocalate'),
  ];
}
