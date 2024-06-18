import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/basketcar/presentation/provider/payment_provider.dart';
import 'package:untitled/features/basketcar/presentation/widgets/list_item_conatiner_widget.dart';

class ProductDetailsContainer extends StatelessWidget {
  const ProductDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
     var myprovider = Provider.of<PaymentProvider>(context);
    return Column(
      children: [
        ...List.generate(myprovider.productModellist.length, (index)=>ListItemConatinerWidget(index: index))
       
      ],
    );
  }
}
