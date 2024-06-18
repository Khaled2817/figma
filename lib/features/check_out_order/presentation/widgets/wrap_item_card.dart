import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/features/check_out_order/presentation/provider/Provider.dart';
import 'package:untitled/features/check_out_order/presentation/widgets/cart_item_container.dart';

class WrapItemCard extends StatelessWidget {
  const WrapItemCard({super.key});

  @override
  Widget build(BuildContext context) {
        var myprovider=Provider.of<CheckOutProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 1.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
              myprovider.cardItemModelList.length,
              (index) => CartItemContainer(index: index,)
                  )
        ],
      ),
    );
  }
}
