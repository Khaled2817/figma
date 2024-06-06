import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/features/basket/presentation/provider/basketprovider.dart';

class WrapRow extends StatelessWidget {
  const WrapRow({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<BasketProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 2.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
              myProvider.finalPriceList.length,
              (index) => Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Row(
                      children: <Widget>[
                      Text(myProvider.finalPriceList[index].title,
                            style: TextStyleClass.semiStyle(color:const Color(0xff868889))),
                        const Spacer(),
                          Text(
                          myProvider.finalPriceList[index].price,
                          style: TextStyleClass.semiStyle(color:const Color(0xff868889)),
                        ),
                      ],
                    ),
                  ))
        ],
      ),
    );
  }
}
