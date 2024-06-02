import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_funct/navigation.dart';
import 'package:untitled/features/Product/presentation/pages/productPage.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';

class ImageCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var MyProvider = Provider.of<MarketProvider>(context);
    return InkWell(
      onTap: (){
    //  MyProvider.Addbasket(MyProvider.listMarket[1]);
    navP(ProductPage());
    
      },
      child: Container(
        width: 46.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
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
            ]),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
          children: 
          
          [
            Container(
                width: 100.w,
                height: 13.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(
                          "${Images.foodd}",
                        ),
                        fit: BoxFit.cover))),
     Padding(
              padding:  EdgeInsets.all(1.w),
              child: Text(
                "خضروات",
                style: TextStyleClass.semiStyle(),
                maxLines: 1,
                overflow:TextOverflow.ellipsis ,
              ),
            ),
            // Padding(
            //   padding:  EdgeInsets.all(1.w),
            //   child: Text(
            //     "${marketModel.headtext}",
            //     style: TextStyleClass.semiStyle(),
            //     maxLines: 1,
            //     overflow:TextOverflow.ellipsis ,
            //   ),
            // ),
            // Padding(
            //   padding:  EdgeInsets.all(2.w),
            //   child: Text(
            //     "${marketModel.dectext}",
            //     style: TextStyleClass.smallStyle(),
            //        maxLines: 2,
            //     overflow:TextOverflow.ellipsis ,
            //   ),
            // ),
            // Padding(
            //   padding:  EdgeInsets.all(2.w),
            //   child: Text(
            //   "${marketModel.place}",
            //     style: TextStyleClass.smallStyle(color: 
            //     Color.fromARGB(255, 16, 201, 111)),
            //        maxLines: 2,
            //     overflow:TextOverflow.ellipsis ,
                
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
