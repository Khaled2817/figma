import 'package:flutter/material.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/features/add_order/presentation/pages/add_order_page.dart';
import 'package:untitled/features/check_out_order/presentation/pages/check_out_page.dart';
import 'package:untitled/features/order_stat/presentation/pages/order_statu_page.dart';

class OrderProvider extends ChangeNotifier {

void goTo(){
navP(OrderStatuPage());
}

}