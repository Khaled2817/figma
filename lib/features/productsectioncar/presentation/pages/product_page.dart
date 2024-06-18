import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/car_home/presentation/widgets/appBar_widget.dart';
import 'package:untitled/features/productsectioncar/presentation/widgets/float_action_section_widget.dart';
import 'package:untitled/features/productsectioncar/presentation/widgets/product_carusel_widget.dart';
import 'package:untitled/features/productsectioncar/presentation/widgets/text_widget.dart';

class ProductSectionPage extends StatelessWidget {
  const ProductSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:  const FloatingSectionButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        toolbarHeight: 10.h,
          elevation: 1.w,
          centerTitle: true,
          actions: [
        AppbarWidgett()
          ]),
      body: Container(
        width: 100.w,
        height: 100.h,
        padding: appPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
            ProductCaruselWidget(),
            SizedBox(height: 2.h,),
            TextWidget(),
             
             
            ],
          ),
        ),
      ),
    );
  }
}
