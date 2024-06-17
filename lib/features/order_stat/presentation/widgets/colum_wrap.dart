import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/order_stat/presentation/provider/orderstatus_provider.dart';

class ColumWrap extends StatelessWidget {
  const ColumWrap({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<OrderstatusProvider>(context);
    return Container(
      width: 100.w,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "#31212",
                style: TextStyleClass.semiStyle(color: Color(0xff09090A)),
              ),
              Spacer(),
              Row(
                children: [
                   Text(
                "Order ID",
                style: TextStyleClass.semiStyle(color: Color(0xff09090A)),
              ),
                  SvgWidget(svg: Images.o1),
                ],
              ),
            ],
          ),
          SizedBox(height: 2.h,),
          ...List.generate(
              myprovider.orderstatusModelList.length,
              (index) => Padding(
                padding:  EdgeInsets.only(bottom:5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.end ,
                     
                            children: <Widget>[
                           Text(
                                  "${myprovider.orderstatusModelList[index].text1}"
                                  ,style:TextStyleClass.semiStyle(color: Color(0xff09090A)),),
                                  SizedBox(height: 0.5.h,),
                                   Text(
                                  "${myprovider.orderstatusModelList[index].text2}"
                                  ,style:TextStyleClass.semiStyle(color: Color(0xff7C7C7C)),
                                  
                                  )
                                    
                                  
                            ],
                          ),
                        ),
                        SizedBox(width: 2.w,),
                         myprovider.orderstatusModelList[index].icon
                      ],
                    ),
              ))
        ],
      ),
    );
  }
}
