import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/features/basket/presentation/provider/basketprovider.dart';

class FloatingButtom extends StatelessWidget {
  const FloatingButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
        onTap: () {
          Provider.of<BasketProvider>(context, listen: false)
              .goToBasketDetailsPage();
        },
        text: 'اضف الي السلة');
  }
}
