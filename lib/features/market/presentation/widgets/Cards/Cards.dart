import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/helper_funct/navigation.dart';
import 'package:untitled/features/market/data/models/markeymodel.dart';
import 'package:untitled/features/market/presentation/pages/market_widget.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';

class CardS extends StatelessWidget {

MarketModel marketModel;
CardS(
  {required this.marketModel}
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
        child: Container(
          width: 46.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.w),
             ),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
            children: 
            
            [
              Container(
                  width: 100.w,
                  height: 13.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.w),
                      image: DecorationImage(
                          image: AssetImage(
                            "${marketModel.image}",
                          ),
                          fit: BoxFit.cover))),
             Padding(
                padding:  EdgeInsets.all(1.w),
                child: Text(
                  "(${marketModel.marketName})",
                  style: TextStyleClass.semiStyle(),
                  maxLines: 1,
                  overflow:TextOverflow.ellipsis ,
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(1.w),
                child: Text(
                  "${marketModel.headtext}",
                  style: TextStyleClass.semiStyle(),
                  maxLines: 1,
                  overflow:TextOverflow.ellipsis ,
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(2.w),
                child: Text(
                  "${marketModel.dectext}",
                  style: TextStyleClass.smallStyle(),
                     maxLines: 2,
                  overflow:TextOverflow.ellipsis ,
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(2.w),
                child: Text(
                "${marketModel.place}",
                  style: TextStyleClass.smallStyle(color: 
                  Color.fromARGB(255, 16, 201, 111)),
                     maxLines: 2,
                  overflow:TextOverflow.ellipsis ,
                  
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
