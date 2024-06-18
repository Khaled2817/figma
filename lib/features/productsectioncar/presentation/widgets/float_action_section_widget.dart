import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/features/productsectioncar/presentation/provider/product_section_provider.dart';

class FloatingSectionButtom extends StatelessWidget {
  const FloatingSectionButtom({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider=Provider.of<ProductSectionProvider>(context);
    return ButtonWidget(
      color: Color(0xffE3BB47),
        onTap: () {
          myprovider.goTo();
        },
        text: 'اضف الي العربه');
  }
}