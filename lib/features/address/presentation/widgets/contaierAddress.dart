import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/features/address/presentation/provider/addressesProvider.dart';

class AddressesContaire extends StatelessWidget {
  const AddressesContaire({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.w,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
      child: Container(
        padding: appPadding,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.w)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "المنزل",
                      style: TextStyleClass.semiBoldStyle(),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text("٣٢٣٢٣٢", style: TextStyleClass.semiBoldStyle()),
                  ],
                ),
                SizedBox(
                  width: 16.w,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("RHMA8243,8243,3934 pd",
                    style: TextStyleClass.semiStyle()),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 3.h,
                  width: 6.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.w),
                      color: Color(0xff264653),
                      image: DecorationImage(
                          image: AssetImage("${Images.done}"),
                          fit: BoxFit.cover)),
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.all(2.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Image.asset("${Images.remove}"),
                    onTap: () {
                      Provider.of<AddressesProvider>(context, listen: false)
                          .removeAddress();
                    },
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  InkWell(child: Image.asset("${Images.update1}"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
