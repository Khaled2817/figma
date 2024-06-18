import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/basketcar/data/models/payment_total_model.dart';
import 'package:untitled/features/basketcar/data/models/product_model.dart';
import 'package:untitled/features/basketcar/presentation/pages/payment_page.dart';

class PaymentProvider extends ChangeNotifier {
  List<PaymentTotalModel> supTotalModelList = [
    PaymentTotalModel(text1: "سعر الطلب", text2: "\$ 15.00 "),
    PaymentTotalModel(text1: "الضريبه المضافه", text2: "\$ 15.00 "),
    PaymentTotalModel(text1: "الاجمالي", text2: "\$ 15.00 ")
  ];

  List<ProductModel> productModellist = [
    ProductModel(
        text1: 'زيت موبيل ',
        text2: '2 ليتر',
        text3: 'مع 1 لتر إضافي · 4.64.6 من 5 نجوم (154). تم شراء 100+ سلعة في ',
        text4: '1',
        text5: '200 ريال',
        widget1:   Image.asset("${Images.ss11}"),
        widget2:  Image.asset("${Images.basketremov}"),
        widget3: SvgWidget(svg: Images.plus),
        widget4:  SvgWidget(svg: Images.min)),
            ProductModel(
        text1: 'زيت موبيل ',
        text2: '2 ليتر',
        text3: 'مع 1 لتر إضافي · 4.64.6 من 5 نجوم (154). تم شراء 100+ سلعة في ',
        text4: '1',
        text5: '200 ريال',
        widget1:   Image.asset("${Images.ss99}"),
        widget2:  Image.asset("${Images.basketremov}"),
        widget3: SvgWidget(svg: Images.plus),
        widget4:  SvgWidget(svg: Images.min))
  ];
  List<ProductModel> productModellist1 = [
    ProductModel(
        text1: 'زيت موبيل ',
        text2: '2 ليتر',
        text3: 'مع 1 لتر إضافي · 4.64.6 من 5 نجوم (154). تم شراء 100+ سلعة في ',
        text4: '1',
        text5: '200 ريال',
        widget1:   Image.asset("${Images.ss11}"),
        widget2:  Image.asset("${Images.basketremov}"),
        widget3: SvgWidget(svg: Images.plus),
        widget4:  SvgWidget(svg: Images.min)),
  ];
  void goTo(){

    navP(PaymentPage());
  }
}
