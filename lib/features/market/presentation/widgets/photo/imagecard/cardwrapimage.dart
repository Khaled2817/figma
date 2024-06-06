import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/app_color.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/Product/presentation/pages/productPage.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';

class CardWrapiamge extends StatelessWidget {
  const CardWrapiamge({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MarketProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 2.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
              myProvider.marketImagelist.length,
              (index) =>Material(
                elevation: 3,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
                  child: SizedBox(
                    width: 47.w,
                    height: 30.h,
                    child:InkWell(
              onTap:(){
              
                navP(ProductPage());
              },
              child: Container(
                // padding: appPadding,
                width: 46.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.w),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 15.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.5.w),
                            image: DecorationImage(
                                image: AssetImage(
                                  myProvider.listMarket[index].image,
                                ),
                                fit: BoxFit.cover))),
                    Padding(
                      padding: EdgeInsets.all(1.w),
                      child: Text(
                      myProvider.listMarket[index].headtext,
                        style: TextStyleClass.normalStyle(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.5.w),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                        myProvider.listMarket[index].dectext*3,
                          style:
                              TextStyleClass.smallStyle(color: AppColor.sixthColor),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ),
                    Row(
                      children: [
              
                   
                        Padding(
                          padding: EdgeInsets.only(right: 2.w, bottom: 1.5.w,top: 1.5.w),
                          child: Text(
                            myProvider.listMarket[index].price,
                            style: TextStyleClass.semiBoldStyle(color: AppColor.secColor),
                            //overflow:TextOverflow.ellipsis ,
                          ),
                        ),
                        SizedBox(width: 10.w,),
                             SvgWidget(svg: Images.stars),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    )
                  ],
                ),
              ),
                  ) 
                    
                    
                    
                    ),
                
              ))
        ],
      ),
    );
  }
}
