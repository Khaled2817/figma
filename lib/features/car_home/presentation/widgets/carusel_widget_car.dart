import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/carousel_slider.dart';

class CaruselWidgetCar extends StatelessWidget {
  const CaruselWidgetCar({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSliderWidget(
        changeindex: () {},
        image: AssetImage("${Images.car1}"),
        listlength: 2,
        text: "",
        smootherLength: 0,
        indexSmoother: 0);
  }
}
