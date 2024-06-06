import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/app_color.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/features/Product/presentation/pages/productPage.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
     var photoprovider = Provider.of<MarketProvider>(context);
    return InkWell(
      onTap: (){
       
        photoprovider.taggel();
      },
      child: Container(
        height: 5.h,
        width: 50.w,
        decoration: BoxDecoration(color: photoprovider.changecolor()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "الصور",
              style: TextStyleClass.normalBoldStyle(color:photoprovider.image?Colors.white:Colors.black),
            ),
            SizedBox(width: 2.w,),
            Image(image: const AssetImage(Images.Imgbox),color: photoprovider.image?Colors.white:AppColor.secColor,)
          ],
        ),
      ),
    );
  }
}
