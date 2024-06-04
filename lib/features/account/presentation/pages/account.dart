import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/account/presentation/widgets/containerprofialaccount.dart';
import 'package:untitled/features/account/presentation/widgets/moneycontainer.dart';
import 'package:untitled/features/account/presentation/widgets/wrap_of_account.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "حسابي",
          style: TextStyleClass.semiBigBoldStyle(),
        ),
        centerTitle: true,
      ),
      body: Container(
          width: 100.w,
          height: 100.h,
          padding: appPadding,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ContainerProfileAccount(),
                SizedBox(
                  height: 2.h,
                ),
                ContainerMoney(),
                SizedBox(
                  height: 1.h,
                ),
                WrapOfAccount()
              ],
            ),
          )),
    );
  }
}
