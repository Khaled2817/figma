import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/add_order/presentation/provider/provider_add_item.dart';
import 'package:untitled/features/menu_information_comment/presentation/provider/menu_provider.dart';

class WrapComment extends StatelessWidget {
  const WrapComment({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MenuProvider>(context);
    return Wrap(
      //runSpacing: 2.h,
      //alignment: WrapAlignment.spaceBetween,
      children: <Widget>[
        ...List.generate(
            myProvider.commentList.length,
            (index) => Container(
                  height: 10.h,
                  width: 100.w,
                  padding: appPadding,
                  decoration: BoxDecoration(
                    color: Colors.white,
                     // borderRadius: BorderRadius.circular(2.w),
                    border:Border(bottom: BorderSide(color: Color(0xffD9D9D9)))),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                               myProvider.commentList[index].widget,
                              
                              Text("${myProvider.commentList[index].textRate}"),
                            ],
                          ),
                          Spacer(),
                          Text("${myProvider.commentList[index].textName}",style: TextStyleClass.semiStyle()),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("${myProvider.commentList[index].textComment}",style: TextStyleClass.semiStyle(color: Color(0xff837E7E)),),
                        ],
                      )
                    ],
                  ),
                ))
      ],
    );
  }
}
