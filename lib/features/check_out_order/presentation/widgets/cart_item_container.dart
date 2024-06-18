import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/check_out_order/presentation/provider/Provider.dart';

class CartItemContainer extends StatelessWidget {
  const CartItemContainer({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<CheckOutProvider>(context);
    return Material(
      elevation: 1.w,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
      child: Container(
        height: 15.h,
        padding: EdgeInsets.all(2.w),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(2.w)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // height: 9.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${myprovider.cardItemModelList[index].text1}",
                        style: TextStyleClass.semiStyle(),
                      ),
                      Text(
                        "${myprovider.cardItemModelList[index].text2}",
                        style:
                            TextStyleClass.normalStyle(color: Color(0xffA2A2A2)),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 2.h,),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              
                              Text("${myprovider.cardItemModelList[index].text4}",
                                  style: TextStyleClass.semiStyle(
                                      color: Color(0xff581D8A))),
                            
                            ],
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          
                          SvgWidget(svg: Images.plus),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text("1",
                              style:
                                  TextStyleClass.semiStyle(color: Colors.black)),
                          SizedBox(
                            width: 2.w,
                          ),
                          SvgWidget(svg: Images.min),
                          SizedBox(
                            width: 3.w,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Container(
                  height: 10.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: myprovider.cardItemModelList[index].widget,
                          fit: BoxFit.cover)),
                )
              ],
            ),
            SizedBox(
              width: 6.w,
            ),
          ],
        ),
      ),
    );
  }
}
