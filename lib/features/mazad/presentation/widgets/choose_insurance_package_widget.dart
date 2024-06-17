import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/mazad/presentation/provider/mazad_provider.dart';
import 'package:untitled/features/mazad/presentation/widgets/wrapp_choose_pakage_widget.dart';

class ChooseInsurancePackageWidget extends StatelessWidget {
  const ChooseInsurancePackageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<MazadProvidersetting>(context);
    return Material(
      elevation: 1.w,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
      child: Container(
        width: 100.w,
        height: 50.h,
        padding: appPadding,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.w),
            border: Border.all(width:0.1.w ,color: Color(0xffA1A1A1))            
            ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 1.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "اختر باقة التأمين المسترد",
                  style: TextStyleClass.semiBoldStyle(),
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            WrappChoosePakage(),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                Text(
                  "إجمالي الحساب",
                  style: TextStyleClass.semiStyle(color: Color(0xffA1A1A1)),
                ),
                Spacer(),
                Text(
                  "2000 ر.س",
                  style: TextStyleClass.semiBoldStyle(color: Color(0xff0087FE)),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            ButtonWidget(
              color: Color(0xff0087FE),
              onTap: () {},
              text: "أدفع",
              textStyle: TextStyleClass.semiBoldStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
