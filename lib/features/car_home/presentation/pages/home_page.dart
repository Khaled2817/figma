import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/car_home/presentation/widgets/appBar_widget.dart';
import 'package:untitled/features/car_home/presentation/widgets/carusel_widget_car.dart';
import 'package:untitled/features/car_home/presentation/widgets/video_widget.dart';
import 'package:untitled/features/sections/presentation/widgets/section_widget_home.dart';


class HomePageCar extends StatelessWidget {
  const HomePageCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        actions: [AppbarWidgett()]),
      body: Container(
        width: 100.w,
       
        height: 100.h,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[CaruselWidgetCar(),VideoWidget(),
            SectionWidgetHome()],
          ),
        ),
      ),
    );
  }
}
