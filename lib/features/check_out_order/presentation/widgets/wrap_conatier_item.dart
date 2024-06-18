import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/features/check_out_order/presentation/provider/Provider.dart';

class WrapConatierItem extends StatelessWidget {
  const WrapConatierItem({super.key});

  @override
  Widget build(BuildContext context) {
        var myprovider=Provider.of<CheckOutProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 1.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
              myprovider.checkOutItmeModellist.length,
              (index) => Material(
                elevation: 1.w,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
                child: Container(
                padding:EdgeInsets.all(2.w),
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(2.w)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: <Widget>[
                          Container(
                            height: 6.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("${myprovider.checkOutItmeModellist[index].text4}",style:TextStyleClass.semiStyle(color: Color(0xff581D8A))),
                              ],
                            ),
                          ),
                SizedBox(width: 6.w,),
                          Row(children: [Container(
                            height:9.h ,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                              Text("${myprovider.checkOutItmeModellist[index].text1}",style:TextStyleClass.semiStyle(),),
                              Text("${myprovider.checkOutItmeModellist[index].text2}",style:TextStyleClass.tinyStyle(color: Color(0xffA2A2A2)),),
                              Text("${myprovider.checkOutItmeModellist[index].text3}",style:TextStyleClass.tinyStyle(color: Color(0xffA2A2A2)),),
                              ],),
                          ),
                          SizedBox(width: 2.w,),
                          Container(
                            height: 10.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: myprovider.checkOutItmeModellist[index].widget,
                                    fit: BoxFit.cover)),
                          )],),
                          
                        ],
                      ),
                    ),
              )
                  )
        ],
      ),
    );
  }
}
