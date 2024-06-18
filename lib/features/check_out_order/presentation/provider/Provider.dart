import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/check_out_order/data/models/card_item_model.dart';
import 'package:untitled/features/check_out_order/data/models/card_item_model.dart';
import 'package:untitled/features/check_out_order/data/models/check_out_itme_model.dart';
import 'package:untitled/features/check_out_order/data/models/copon_model.dart';
import 'package:untitled/features/check_out_order/data/models/payment_model.dart';
import 'package:untitled/features/check_out_order/data/models/sup_total_model.dart';
import 'package:untitled/features/check_out_order/presentation/pages/card_page.dart';

class CheckOutProvider extends ChangeNotifier {
  List<CheckOutItmeModel> checkOutItmeModellist = [
    CheckOutItmeModel(
        text1: 'Arizona Burger',
        text2: 'Removable :  Tomato - Green',
        text3: 'Add :  Tomato - Green',
        text4: '\$ 12.00',
        widget:  AssetImage("${Images.pp}")),
        CheckOutItmeModel(
        text1: 'Arizona Burger',
        text2: 'Removable :  Tomato - Green',
        text3: 'Add :  Tomato - Green',
        text4: '\$ 12.00',
        widget:  AssetImage("${Images.pp}"))
  ];
  List<CoponModel> coponModellist = [
    CoponModel(text: "PRO20", widget: SvgWidget(svg: Images.copon)),
    CoponModel(text: "PRO20", widget: SvgWidget(svg: Images.copon)),
    CoponModel(text: "PRO20", widget: SvgWidget(svg: Images.copon))
  ];

  List<CoponModel> selecrted = [];

  void onTap(CoponModel v) {
    if (selecrted.contains(v)) {
      selecrted.remove(v);
    } else {
      selecrted.add(v);
    }
    notifyListeners();
  }

  Color isSelected(CoponModel v) {
    return selecrted.contains(v) ? Color(0xff581D8A) : Colors.grey;
  }

  double evaluate(CoponModel v) {
    return selecrted.contains(v) ? 3 : 0;
  }

  List<PaymentModel> paymentModeList = [
     
    PaymentModel(text: "wallet "),
    PaymentModel(text: "visa"),
    PaymentModel(text: "Cach"),
 
  ];
 List<PaymentModel> selecrtedd = [];

  void onTapp(PaymentModel v) {
    if (selecrtedd.contains(v)) {
      selecrtedd.remove(v);
    } else {
      selecrtedd.add(v);
    }
    notifyListeners();
  }

  Color isSelectedBorderColor(PaymentModel v) {
    return selecrted.contains(v) ? Color(0xff581D8A) : Colors.grey;
  }

  Color conatinerColor(PaymentModel v) {
    return selecrtedd.contains(v) ? Color(0xff581D8A) : Colors.white;
  }




  List<SupTotalModel> supTotalModelList = [
    SupTotalModel(text1: "Sup Total", text2: "\$ 15.00 "),
    SupTotalModel(text1: "Discount 20%", text2: "\$ 15.00 "),
    SupTotalModel(text1: "Delivery Fees", text2: "\$ 15.00 "),
    SupTotalModel(text1: "VAT  Fees", text2: "\$ 15.00 "),
    SupTotalModel(text1: "Total", text2: "\$ 15.00 ")
  ];
    List<CardItemModel> cardItemModelList = [
    CardItemModel(
        text1: 'Arizona Burger',
        text2: '80g meat, tomatoes,onion,',
        text3: 'Add :  Tomato - Green',
        text4: '\$ 12.00',
        widget:  AssetImage("${Images.pp}")),
        CardItemModel(
        text1: 'Arizona Burger',
        text2: 'R80g meat, tomatoes,onion,',
        text3: 'Add :  Tomato - Green',
        text4: '\$ 12.00',
        widget:  AssetImage("${Images.pp}"))
  ];

  void goTo(){

    navP(CardWidget());
  }
}
