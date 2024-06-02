import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/helper_funct/navigation.dart';
import 'package:untitled/core/widget/TextFiled_widget/Textfilde_widget.dart';
import 'package:untitled/features/basket/presentation/widgets/Textfiled.dart';
import 'package:untitled/features/basket/presentation/widgets/buycontainer.dart';
import 'package:untitled/features/basket/presentation/widgets/container_productname.dart';

import '../widgets/wraprow.dart';

class BasketDetails extends StatelessWidget {
  const BasketDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "تفاصيل الطلب",
          style: TextStyleClass.semiBigBoldStyle(),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        padding: appPadding,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ContainerProductName(),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "الموقع",
                    style: TextStyleClass.semiStyle(color: Color(0xff8F8989)),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              DetailsTextformFild(),
              WrapRow(),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("طريقة الدفع", style: TextStyleClass.semiBoldStyle()),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              BuyContainer(),
              SizedBox(
                height: 5.h,
              ),
              InkWell(
                onTap: () => navP(BasketDetails()),
                child: Container(
                  height: 6.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      color: Color(0xff264653),
                      borderRadius: BorderRadius.circular(2.w)),
                  child: Center(
                      child: Text(
                    "اضف الي السلة",
                    style: TextStyleClass.normalBoldStyle(color: Colors.white),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
