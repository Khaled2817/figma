import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/text_field.dart';
import 'package:untitled/features/basket/presentation/widgets/buycontainer.dart';
import 'package:untitled/features/basket/presentation/widgets/container_productname.dart';
import 'package:untitled/features/basket/presentation/widgets/dialog.dart';
import '../widgets/wraprow.dart';

class BasketDetails extends StatelessWidget {
var controller=TextEditingController(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "تفاصيل الطلب",
          style: TextStyleClass.semiBigBoldStyle(),
        ),
        centerTitle: true,backgroundColor: Colors.white,
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
TextFieldWidget(controller:controller,hintText: "تم اختيار الموقع عبر الخريطة مسبقا",textAlign:TextAlign.right,
prefix:Image.asset("${Images.pinaltfill}"),),

            //  DetailsTextformFild(),
              WrapRow(),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("طريقة الدفع", style: TextStyleClass.semiHeadStyle()),
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
                onTap: () => showDialogExample(),
                child: Container(
                  height: 6.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      color: Color(0xff264653),
                      borderRadius: BorderRadius.circular(2.w)),
                  child: Center(
                      child: Text(
                    "اكمال الطلب",
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
