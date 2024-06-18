import 'package:flutter/material.dart';
import 'package:untitled/features/paymentcarapp/data/models/payment_oil_model.dart';

class PaymentProvideroil extends ChangeNotifier {
  List<PaymentOilModel> paymentModeList = [
    PaymentOilModel(text: "المحفظه"),
    PaymentOilModel(text: "بطاقه الائتمان"),
    PaymentOilModel(text: "الدفع كاش "),
  ];
  List<PaymentOilModel> selecrtedd = [];

  void onTapp(PaymentOilModel v) {
    if (selecrtedd.contains(v)) {
      selecrtedd.remove(v);
    } else {
      selecrtedd.add(v);
    }
    notifyListeners();
  }

  Color isSelectedBorderColor(PaymentOilModel v) {
    return selecrtedd.contains(v) ? Color(0xffE3BB47) : Colors.grey;
  }

  Color conatinerColor(PaymentOilModel v) {
    return selecrtedd.contains(v) ? Color(0xffE3BB47) : Colors.white;
  }
}
