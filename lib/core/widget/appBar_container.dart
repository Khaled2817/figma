import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/constants.dart';

class AppBarrContainer extends StatelessWidget {
  const AppBarrContainer({
    super.key,
    this.height,
    this.color1,
    this.color2,
    this.widget,
    this.image,
    this.bottomLeft,
    this.bottomRight,
  });
  final double? height;
  final Color? color1;
  final Color? color2;
  final Widget? widget;
  final Image? image;
  final double? bottomLeft;
  final double? bottomRight;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: appPadding,
        clipBehavior: Clip.antiAlias,
        height: height,
        width: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(bottomLeft ?? 15.w),
              bottomRight: Radius.circular(bottomRight ?? 15.w)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [color1 ?? Colors.white, color2 ?? Colors.white],
          ),
        ),
        child: widget);
  }
}
