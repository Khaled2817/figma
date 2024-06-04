import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_funct/navigation.dart';
import 'package:untitled/features/wallet/presentation/pages/walletpage.dart';

class ContainerMoney extends StatelessWidget {
  const ContainerMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 0.2.w,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
      child: Container(
        width: 100.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.w),
           ),
        child: Padding(
          padding: EdgeInsets.all(5.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Text("1222 RS",style: TextStyleClass.semiBoldStyle(color: Color(0xffF2A361))), 
          Row(
            children: [
              InkWell(child: Text("الرصيد",style: TextStyleClass.semiHeadBoldStyle(),),onTap: (){navP(WalletPage());},),
              SizedBox(width: 4.w,),
              Image.asset("${Images.dollars}"),
              
            ],
          )
            ],
          
          ),
        ),
      ),
    );
  }
}
