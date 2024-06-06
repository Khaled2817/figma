import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/features/market/data/models/markeymodel.dart';
import 'package:untitled/features/market/presentation/pages/market_widget.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';

import '../../../../../config/app_color.dart';

class CardS extends StatelessWidget {

MarketModel marketModel;
CardS(
  {super.key, required this.marketModel}
  );



  @override
  Widget build(BuildContext context) {
    var MyProvider = Provider.of<MarketProvider>(context);
    return InkWell(
      onTap: (){
    //  MyProvider.Addbasket(MyProvider.listMarket[1]);
    navP(MarketPage(marketName:marketModel.marketName,marketlocation: marketModel.place,));
    
      },
      child: Material(
        elevation: 3,
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
        child: SizedBox(
          height: 30.h,
          child: Container(
            width: 46.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.w),
               ),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              
              [
                Container(
                    width: 100.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.w),
                        image: DecorationImage(
                            image: AssetImage(
                              marketModel.image,
                            ),
                            fit: BoxFit.cover))),
              
                Padding(
                  padding:  EdgeInsets.all(1.w),
                  child: Text(
                    marketModel.headtext,
                    style: TextStyleClass.normalStyle(),
                    maxLines: 1,
                    overflow:TextOverflow.ellipsis ,
                  ),
                ),
                Padding(
                 padding: EdgeInsets.symmetric(horizontal: 1.5.w),
                  child: Text(
                    marketModel.dectext*3,
                    style: TextStyleClass.smallStyle(color: AppColor.sixthColor),
                       maxLines: 2,
                    overflow:TextOverflow.ellipsis ,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(2.w),
                  child: Text(
                  marketModel.price,
                    style: TextStyleClass.semiBoldStyle(color: 
                    Color(0xff25A189)),
                       maxLines: 2,
                    overflow:TextOverflow.ellipsis ,
                    
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
