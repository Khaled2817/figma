import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/features/market/data/models/markeymodel.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';
import 'package:untitled/features/market/presentation/widgets/Cards/Cards.dart';

class CardWrap extends StatelessWidget {
  const CardWrap({super.key});

  @override
  Widget build(BuildContext context) {
    var MyProvider = Provider.of<MarketProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 2.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
              MyProvider.listMarket.length,
              (index) => CardS( marketModel: MyProvider.listMarket[index],
                  ))
        ],
      ),
    );
  }
}
