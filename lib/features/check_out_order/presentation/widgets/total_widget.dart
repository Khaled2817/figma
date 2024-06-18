import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/features/check_out_order/presentation/provider/Provider.dart';
import 'package:untitled/features/check_out_order/presentation/widgets/container_total_widget.dart';

class TotalWidget extends StatelessWidget {
  const TotalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<CheckOutProvider>(context);
    return Column(
      children: <Widget>[
        Material(
          elevation: 0.5.w,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
          child: Container(
            padding: appPadding,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.w)),
            child: Column(
              children: [
                ...List.generate(
                    myprovider.supTotalModelList.length,
                    (index) => ContainerTotalWidget(
                          text1: myprovider.supTotalModelList[index].text1,
                          text2: myprovider.supTotalModelList[index].text2,
                        ))
              ],
            ),
          ),
        ),
        SizedBox(height: 4.h,),
        ButtonWidget(
          onTap: () {myprovider.goTo();},
          text: "Next",
          textStyle: TextStyleClass.headStyle(color: Colors.white),
          color: Color(0xff581D8A),
        ),
          SizedBox(height: 4.h,),
      ],
    );
  }
}
