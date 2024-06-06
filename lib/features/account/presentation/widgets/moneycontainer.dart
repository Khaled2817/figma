import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_function/navigation.dart';
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
            children: [ Row(
            children: [
            Image.asset(Images.dollars),
              SizedBox(width: 4.w,),
              InkWell(child: Text("الرصيد",style: TextStyleClass.semiHeadBoldStyle(),),onTap: (){navP(const WalletPage());},),
              
            ],
          ),
             Text("1222 RS",style: TextStyleClass.semiBoldStyle(color: const Color(0xffF2A361))), 
         
            ],
          
          ),
        ),
      ),
    );
  }
}
