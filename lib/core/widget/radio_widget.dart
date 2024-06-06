import 'package:untitled/config/app_color.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';

class RadioWidget extends StatelessWidget {
  const RadioWidget({super.key, required this.selected});
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.isTablet?4.w:5.w,
      height: Constants.isTablet?4.w:5.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColor.defaultColor,width: 3),
      ),
      padding: EdgeInsets.all(0.5.w),
      child: Container(
        decoration: BoxDecoration(
          color: selected?AppColor.defaultColor:Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
