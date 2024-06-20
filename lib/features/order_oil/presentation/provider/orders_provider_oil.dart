import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/order_oil/data/models/oeder_model_detail.dart';
import 'package:untitled/features/order_oil_details/presentation/pages/order_oil_details_page.dart';
import 'package:untitled/features/order_oil_details/presentation/widgets/order_detail_widget.dart';

class OrdersProviderOil extends ChangeNotifier {
  List<orderModelDetail> OrderModelDetailList = [
    orderModelDetail(
        text1: 'زيت موبيل ',
        text2: '2 لتر',
        text3: 'خدمات اضافيه',
        text4: 'رقم الطلب : ',
        text5: '342353',
        text6: 'طلب جديد',
        text7: '2024/5/12',
        widget1: Image.asset("${Images.ss11}"),
        widget2: SvgWidget(svg:Images.time),
        widget3:  SvgWidget(svg:Images.svg1)
        ),
        orderModelDetail(
        text1: 'زيت موبيل ',
        text2: '2 لتر',
        text3: 'خدمات اضافيه',
        text4: 'رقم الطلب : ',
        text5: '342353',
        text6: 'طلب جديد',
        text7: '2024/5/12',
        widget1: Image.asset("${Images.ss99}"),
        widget2: SvgWidget(svg:Images.time),
        widget3:  SvgWidget(svg:Images.svg2)
        ),
        orderModelDetail(
        text1: 'زيت موبيل ',
        text2: '2 لتر',
        text3: 'خدمات اضافيه',
        text4: 'رقم الطلب : ',
        text5: '342353',
        text6: 'طلب جديد',
        text7: '2024/5/12',
        widget1: Image.asset("${Images.ss77}"),
        widget2: SvgWidget(svg:Images.time),
        widget3:  SvgWidget(svg:Images.svg3)
        ),
        orderModelDetail(
        text1: 'زيت موبيل ',
        text2: '2 لتر',
        text3: 'خدمات اضافيه',
        text4: 'رقم الطلب : ',
        text5: '342353',
        text6: 'طلب جديد',
        text7: '2024/5/12',
        widget1: Image.asset("${Images.ss66}"),
        widget2: SvgWidget(svg:Images.time),
        widget3:  SvgWidget(svg:Images.svg4)
        ),
        orderModelDetail(
        text1: 'زيت موبيل ',
        text2: '2 لتر',
        text3: 'خدمات اضافيه',
        text4: 'رقم الطلب : ',
        text5: '342353',
        text6: 'طلب جديد',
        text7: '2024/5/12',
        widget1: Image.asset("${Images.ss55}"),
        widget2: SvgWidget(svg:Images.time),
        widget3:  SvgWidget(svg:Images.svg5)
        ),
        orderModelDetail(
        text1: 'زيت موبيل ',
        text2: '2 لتر',
        text3: 'خدمات اضافيه',
        text4: 'رقم الطلب : ',
        text5: '342353',
        text6: 'طلب جديد',
        text7: '2024/5/12',
        widget1: Image.asset("${Images.ss88}"),
        widget2: SvgWidget(svg:Images.time),
        widget3:  SvgWidget(svg:Images.svg6)
        )
  ];

  void goTo(){
    navP(OrderOilDetailsPage());
  }
}
