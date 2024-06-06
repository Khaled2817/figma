import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: const SizedBox.shrink(),
      ),
    );
  }
}
