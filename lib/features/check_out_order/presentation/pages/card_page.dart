import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/widget/appBar_container.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/features/check_out_order/presentation/widgets/widget_of_appBarr_conatiner.dart';
import 'package:untitled/features/check_out_order/presentation/widgets/wrap_item_card.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ButtonWidget(
          onTap: () {},
          text: "Next",
          textStyle: TextStyleClass.headStyle(color: Colors.white),
          color: Color(0xff581D8A),
        ),
      body: Container(
        width: 100.w,
        height: 100.h,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              AppBarrContainer(
              height: 14.h,
              color1: Color(0xff22112E),
              color2: Color(0xff3E1B58),
              widget: Container(
                child: WidgetOfAppbarrConatiner(text: 'Cart',)),
               
            ),
             SizedBox(height: 3.h,),
            Container(
              padding: appPadding,
              child: WrapItemCard())
            ],
          ),
        ),
      ),
    );
  }
}
