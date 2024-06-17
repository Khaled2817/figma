import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/widget/appBar_container.dart';
import 'package:untitled/features/mazad/presentation/widgets/not_enabled_widget.dart';
import 'package:untitled/features/mazad/presentation/widgets/update_appBar_widget.dart';

class UpdatingDataWidget extends StatelessWidget {
  const UpdatingDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              AppBarrContainer(
                height: 13.h,
                bottomLeft: 10.w,
                bottomRight: 10.w,
                color1: Color(0xff184A8B),
                color2: Color(0xff63C7FF),
                widget: UpdateAppbarWidget(),
              ),
              SizedBox(height: 5.h,),
              NotEnabledWidget()
            ],
          ),
        ),
      ),
    );
  }
}
