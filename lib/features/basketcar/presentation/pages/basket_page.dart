import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/back_button_widget.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/basketcar/presentation/widgets/appBar_basket_widget.dart';
import 'package:untitled/features/basketcar/presentation/widgets/float_action_section_widget.dart';
import 'package:untitled/features/basketcar/presentation/widgets/product_details_container_widget.dart';
import 'package:untitled/features/basketcar/presentation/widgets/total_payment_widget.dart';

class BasketPageCar extends StatelessWidget {
  const BasketPageCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingSectionButtomProduct(),
      body: Container(
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppbarBasketWidget(),
              Padding(
                padding:  EdgeInsets.all(2.w),
                child: ProductDetailsContainer(),
                
              ),
              
              ],
          ),
        ),
      ),
    );
  }
}
