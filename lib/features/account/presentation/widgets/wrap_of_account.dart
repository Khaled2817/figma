import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/features/account/presentation/provider/account_provider.dart';
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
                padding:  EdgeInsets.only(bottom: 2.w),
                child: Container(
                  height: 5.5.h,
                  width: 100.w,
                  decoration: const BoxDecoration(),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       Expanded(
                        child: Container(
                          height: 5.h,
                          //padding: appPadding,
                          decoration: BoxDecoration(
                              border: myProvider.borderside(index)
                              ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              
                              Image(
                                  image: myProvider.acountSettinglist[index]
                                      .imageSetting),
                              SizedBox(
                                width: 2.w,
                              ),
                               InkWell(
                                onTap: (){Provider.of<AddressesProvider>(context,listen: false).goToAddresssesPage();},
                                child: Text(
                                  myProvider.acountSettinglist[index].text,
                                  style: TextStyleClass.semiStyle(
                                      color: const Color(0xff4F5B67)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Image(
                          image:
                              myProvider.acountSettinglist[index].imageRow),
                      SizedBox(
                        width: 2.w,
                      ),
                     
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
