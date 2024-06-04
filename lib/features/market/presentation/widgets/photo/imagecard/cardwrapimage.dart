import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/helper_funct/navigation.dart';
import 'package:untitled/features/Product/presentation/pages/productPage.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';

class CardWrapiamge extends StatelessWidget {
  const CardWrapiamge({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MarketProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 2.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
              myProvider.marketImagelist.length,
              (index) =>InkWell(
      onTap: () {
        //  MyProvider.Addbasket(MyProvider.listMarket[1]);
        navP(ProductPage());
      },
      child: Material(
          child: Container(
            width: 47.w,
            height: 30.h,
            child: Image(image: myProvider.marketImagelist[index].image)),
        
      ),
    ))
        ],
      ),
    );
  }
}
