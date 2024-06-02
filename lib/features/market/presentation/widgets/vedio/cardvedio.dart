import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_funct/navigation.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';
class VedioCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var MyProvider = Provider.of<MarketProvider>(context);
    return InkWell(
      onTap: (){
        // navP(ProductName());
      },
      child: Container(
        width: 46.w,
        height: 20.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image:DecorationImage(image:AssetImage(Images.foodd),fit: BoxFit.cover) ,
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 78, 75, 75),
                offset: Offset(
                  0.0,
                  5.0,
                ),
                blurRadius: 5.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ]
            )
    ));
  }
}
