import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/features/basketcar/presentation/provider/payment_provider.dart';


class FloatingSectionButtomProduct extends StatelessWidget {
  const FloatingSectionButtomProduct({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider=Provider.of<PaymentProvider>(context);
    return ButtonWidget(
      color: Color(0xffE3BB47),
        onTap: () {
          myprovider.goTo();
        },
        text: 'اكمل عملية الشراء');
  }
}