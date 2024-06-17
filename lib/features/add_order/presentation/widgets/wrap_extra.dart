import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/features/add_order/presentation/provider/provider_add_item.dart';


class WrapExtra extends StatelessWidget {
  const WrapExtra({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<AddOrderProvider>(context);
    return Wrap(
      // runSpacing: 2.h,
      // alignment: WrapAlignment.spaceBetween,
      children: <Widget>[
        ...List.generate(
            myProvider.extraIngredientsModellist.length,
            (index) => Container(
              width: 100.w,
              height: 3.h,
              child: Row(
                children: [
               myProvider.extraIngredientsModellist[index].widget,
              Spacer(),
             Text("${myProvider.extraIngredientsModellist[index].text}"),
              
                ],
              ),
            )
                
                )
      ],
    );
  }
}
