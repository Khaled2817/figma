import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/mazad/presentation/provider/mazad_provider.dart';

class WrappChoosePakage extends StatelessWidget {
  const WrappChoosePakage({super.key});

  @override
  Widget build(BuildContext context) {
        var myprovider = Provider.of<MazadProvidersetting>(context);
    return  SizedBox(
      width: 100.w,
      child: Wrap(
       // runSpacing: 2.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
              myprovider.buyInformationModelList.length,
              (index) => Container(
                    height: 23.h,
                    width: 40.w,
                    padding: appPadding,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.w),
                        border: Border.all(color: Color(0xffA1A1A1))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children: [
                         SizedBox(height: 4.h,),
                        SizedBox(child: Column(children: [myprovider.buyInformationModelList[index].widget,
                        SizedBox(height: 2.h,),
                        Text(
                          
                          "${myprovider.buyInformationModelList[index].text1}",
                          style: TextStyleClass.semiBoldStyle(),
                        )],),),
                            SizedBox(height: 1.h,),
                        Text(
                          textAlign:TextAlign.center,
                          "${myprovider.buyInformationModelList[index].text2}",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyleClass.normalStyle(
                              color: Color(0xffA1A1A1)),
                        )
                      ],
                    ),
                  ))
        ],
      ),
    );
  }
}