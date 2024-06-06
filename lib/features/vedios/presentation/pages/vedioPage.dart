import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VedioPage extends StatelessWidget {
  const VedioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: const SingleChildScrollView(
       child:Column(children: [],)
        ),
      ),
    );
  }
}
