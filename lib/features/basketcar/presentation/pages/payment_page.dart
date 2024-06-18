import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/widget/back_button_widget.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/core/widget/text_field.dart';
import 'package:untitled/features/basketcar/presentation/widgets/addImage_conatiner.dart';
import 'package:untitled/features/basketcar/presentation/widgets/addition_container.dart';
import 'package:untitled/features/basketcar/presentation/widgets/address_order_widget.dart';
import 'package:untitled/features/basketcar/presentation/widgets/countinue_payment_widget_product.dart';
import 'package:untitled/features/basketcar/presentation/widgets/product_details_container_widget.dart';
import 'package:untitled/features/basketcar/presentation/widgets/textfiel_widget_conatiner.dart';
import 'package:untitled/features/basketcar/presentation/widgets/total_payment_widget.dart';
import 'package:untitled/features/check_out_order/presentation/widgets/payment_container.dart';
import 'package:untitled/features/paymentcarapp/presentation/pages/payment_page.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ButtonWidget(
        onTap: () {},
        text: "ادفع",
        textStyle: TextStyleClass.headStyle(color: Colors.white),
        color: Color(0xffE3BB47),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE3BB47),
        title: Text(
          "الدفع",
          style: TextStyleClass.bigStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: BackButtonWidget(
          color: Colors.white,
        ),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        padding: appPadding,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CountinuePaymentWidgetProduct(),
              SizedBox(
                height: 2.h,
              ),
              AdditionContainer(),
              SizedBox(
                height: 2.h,
              ),
              AddressOrderWidget(),
              SizedBox(height: 2.h,),
              TextfielWidgetConatiner(),
              SizedBox(height: 2.h,),
              AddimageConatiner(),
              PaymentContainercar(),
              TotalPaymentWidget()
            ],
          ),
        ),
      ),
    );
  }
}
