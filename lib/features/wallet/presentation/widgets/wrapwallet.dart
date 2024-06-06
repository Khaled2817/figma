import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/features/wallet/presentation/provider/walletPageProvider.dart';

class WalletWrap extends StatelessWidget {
  const WalletWrap({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<WalletPageProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 2.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
            myProvider.walletListPage.length,
            (index) => Padding(
              padding:  EdgeInsets.all(2.w),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 6.h,
                    width: 12.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.w),
                      color:
                          myProvider.walletListPage[index].colorTextandcontainer,
                    ),
                    child: myProvider.walletListPage[index].containerimage,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text(myProvider.walletListPage[index].priceText,
                      style: TextStyleClass.semiStyle(
                          color: myProvider
                              .walletListPage[index].colorTextandcontainer)),
                              SizedBox(width: 2.w,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          myProvider.walletListPage[index].headText,
                          style:
                              TextStyleClass.semiStyle(color: const Color(0xff074F4F)),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(myProvider.walletListPage[index].hintText,
                            style: TextStyleClass.normalStyle(
                                color: const Color(0xffBFBFBF)))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
