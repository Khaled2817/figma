import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/features/basketcar/presentation/provider/payment_provider.dart';

class ListItemConatinerWidget extends StatelessWidget {
  const ListItemConatinerWidget({super.key, required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
     var myprovider = Provider.of<PaymentProvider>(context);
    return  Padding(
      padding:  EdgeInsets.only(bottom:2.w),
      child: Material(
        color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
            elevation: 1.w,
            child: Container(
              // height: 15.h,
              padding: EdgeInsets.symmetric(vertical: 6.w, horizontal: 4.w),
              width: 100.w,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.w)),
              child: Column(
                children: [
                  Row(
                    children: [
                      myprovider.productModellist[index].widget1
                    ,
                      SizedBox(width: 2.w,),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "${myprovider.productModellist[index].text1}",
                                  style: TextStyleClass.headStyle(),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text("${myprovider.productModellist[index].text2}",
                                    style: TextStyleClass.headStyle(
                                        color: Color(0xffE3BB47))),
                                Spacer(),
                                 myprovider.productModellist[index].widget2
                              ],
                            ),
                            Text(
                               "${myprovider.productModellist[index].text3}",
                              style: TextStyleClass.normalStyle(
                                  color: Color(0xff6B6464)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Row(children: <Widget>[myprovider.productModellist[index].widget3,
                        SizedBox(width:3.w,),
                        Text( "${myprovider.productModellist[index].text4}"),
                        SizedBox(width: 3.w,),
                       myprovider.productModellist[index].widget4],),
                        Text( "${myprovider.productModellist[index].text5}",style: TextStyleClass.semiStyle(
                                  color: Color(0xffE3BB47)),),
                      
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
    );
  }
}