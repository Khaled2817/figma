
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/features/basket/presentation/widgets/rowWrap.dart';

class WrapRow extends StatelessWidget {
  const WrapRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Wrap(
        runSpacing: 2.h,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          ...List.generate(
             3,
              (index) =>Padding(
                padding:  EdgeInsets.only(top: 2.h),
                child: Rowwrap(),
              ))
        ],
      ),
    );
  }
}
