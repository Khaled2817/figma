import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/order_oil_details/presentation/provider/order_oil_details_provider.dart';
import 'package:untitled/features/order_oil_details/presentation/widgets/showbuttom_bar_widget.dart';
import 'package:untitled/features/personal_settings_oil_app/presentation/pages/personal_settings_page.dart';

class ImageOrderWidget extends StatelessWidget {
  const ImageOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider=Provider.of<OrderOilDetailsProvider>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset("${Images.screen1}"),
                SizedBox(
                  height: 1.h,
                ),
                Text("صور السياره",
                    style: TextStyleClass.semiStyle(color: Color(0xffE3BB47)))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset("${Images.screen2}"),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "صور لوحه السياره",
                  style: TextStyleClass.semiStyle(color: Color(0xffE3BB47)),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 3.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
              onTap: () {
                showModalBottomSheet(
                  isDismissible:true ,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.w),
                            topLeft: Radius.circular(10.w))),
                    context: context,
                    builder: (context) => ShowbuttomsheetWidget());
              },
              text: "الغاء الطلب",
              width: 40.w,
              color: Color(0xffF72F13),
              textStyle: TextStyleClass.semiStyle(color: Colors.white),
            ),
            SizedBox(
              width: 2.w,
            ),
            ButtonWidget(
                onTap: () {
navP(PersonalSettingsPage());

                },
                text: "تم انهاء  الطاب",
                width: 40.w,
                color: Color(0xff4CA63D),
                textStyle: TextStyleClass.semiStyle(color: Colors.white)),
          ],
        )
      ],
    );
  }
}
