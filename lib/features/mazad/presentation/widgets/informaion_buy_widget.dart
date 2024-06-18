import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/mazad/presentation/widgets/choose_insurance_package_widget.dart';
import 'package:untitled/features/mazad/presentation/widgets/electronic_payment.dart';

class InformationBuyWidget extends StatelessWidget {
  const InformationBuyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: SvgWidget(
          svg: Images.backawro,
        ),
        title: Text(
          "معلومات الدفع",
          style: TextStyleClass.headBoldStyle(),
        ),
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        padding: appPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 2.h,),
              ElectronicPayment(),
            SizedBox(height:10.h,),
             ChooseInsurancePackageWidget()],
          ),
        ),
      ),
    );
  }
}
