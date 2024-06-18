import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/check_out_order/presentation/provider/Provider.dart';

class CoponConatinerWidget extends StatelessWidget {
  const CoponConatinerWidget({super.key, required this.text, required this.widget, required this.index});
final String text;
final Widget widget;
final int index;
  @override
  Widget build(BuildContext context) {
      var myprovider=Provider.of<CheckOutProvider>(context);
    return Padding(
                    padding:  EdgeInsets.only(left: 2.w),
                    child: InkWell(
                      onTap:(){myprovider.onTap(myprovider.coponModellist[index]);},
                      child: Material(
                          elevation: myprovider.evaluate(myprovider.coponModellist[index]),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.w)),
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 2.w,horizontal: 4.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2.w,),
                                border: Border.all(color: myprovider.isSelected(myprovider.coponModellist[index]))),
                            child: Row(
                              children: [
                                Text(
                                  "${text}",
                                  style: TextStyleClass.normalStyle(
                                      color: Color(0xff581D8A)),
                                ),
                                SizedBox(width:2.w),
                                widget
                              ],
                            ),
                          )),
                    ),
                  );
  }
}