import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/order_oil_details/presentation/provider/order_oil_details_provider.dart';

class ShowbuttomsheetWidget extends StatelessWidget {
  const ShowbuttomsheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider=Provider.of<OrderOilDetailsProvider>(context);
    return Container(
      height: 40.h,
      padding: EdgeInsets .symmetric(horizontal:9.w,vertical: 2.h),
      decoration: BoxDecoration(
       
        borderRadius: BorderRadius.only(topRight:Radius.circular(10.w),topLeft:Radius.circular(10.w))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){myprovider.colse();},
                child: SvgWidget(svg: Images.x)),
              SvgWidget(svg: Images.circel1),
              SizedBox(
                width: 10.w,
              )
            ],
          ),
           SizedBox(
            height: 3.h,
          ),
          Text("رسوم الغاء الطلب",
              style: TextStyleClass.bigStyle(color:Colors.black)),
          SizedBox(
            height: 3.h,
          ),
          Text("30 ريال", style: TextStyleClass.bigStyle(color: Color(0xffE3BB47))),
          SizedBox(
            height: 3.h,
          ),
          ButtonWidget(
            onTap: () {},
            text: 'ادفع الرسوم',
            textStyle: TextStyleClass.semiStyle(color: Colors.white),
            color: Color(0xffE3BB47),
          )
        ],
      ),
    );
  }
}
