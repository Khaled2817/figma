import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/features/market/presentation/widgets/vedio/cardvedio.dart';
class CardWrapVedio extends StatelessWidget {
  const CardWrapVedio({super.key});

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
              (index) => VedioCard(
                  ))
        ],
      ),
    );
  }
}
