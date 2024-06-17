import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/widget/appBar_container.dart';
import 'package:untitled/features/mazad/presentation/widgets/appBar_widget.dart';

class AuctionOrdersWidget extends StatelessWidget {
  const AuctionOrdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.w,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              AppBarrContainer(
                height: 20.h,
                color1: Color(0xff184A8B),
                color2: Color(0xff63C7FF),
                widget: AppbarWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
