import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/menu_information_comment/presentation/provider/menu_provider.dart';

class WrapInformation extends StatelessWidget {
  const WrapInformation({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MenuProvider>(context);
    return Wrap(
      //runSpacing: 2.h,
      //alignment: WrapAlignment.spaceBetween,
      children: <Widget>[
        ...List.generate(
            myProvider.informationList.length,
            (index) => Container(
                  height: 10.h,
                  width: 100.w,
                  padding: appPadding,
                  decoration: BoxDecoration(
                    color: Colors.white,
                     // borderRadius: BorderRadius.circular(2.w),
                    border:Border(bottom: BorderSide(color: Color(0xffD9D9D9)))),
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("${myProvider.informationList[index].texthead}",style: TextStyleClass.semiStyle()),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text("${myProvider.informationList[index].texthint}",style: TextStyleClass.semiStyle(color: Color(0xff837E7E)),)
                    ],
                  ),
                ))
      ],
    );
  }
}
