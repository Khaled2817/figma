import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/account/presentation/provider/account_provider.dart';
import 'package:untitled/features/address/presentation/pages/addressesPage.dart';
import 'package:untitled/features/address/presentation/provider/addressesProvider.dart';

class WrapOfAccount extends StatelessWidget {
  const WrapOfAccount({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<AccountProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 2.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
              myProvider.acountSettinglist.length,
              (index) => Padding(
                padding:  EdgeInsets.all(2.w),
                child: Container(
                  width: 100.w,
                  decoration: BoxDecoration(),
                  child: Row(
                    children: [
                      Image(
                          image:
                              myProvider.acountSettinglist[index].imageRow),
                      SizedBox(
                        width: 2.w,
                      ),
                      Expanded(
                        child: Container(
                          height: 5.h,
                          //padding: appPadding,
                          decoration: BoxDecoration(
                              border: myProvider.borderside(index)
                              ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: (){Provider.of<AddressesProvider>(context,listen: false).goToAddresssesPage();},
                                child: Text(
                                  myProvider.acountSettinglist[index].text,
                                  style: TextStyleClass.semiStyle(
                                      color: Color(0xff4F5B67)),
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Image(
                                  image: myProvider.acountSettinglist[index]
                                      .imageSetting),
                              SizedBox(
                                width: 2.w,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
