import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/addMazad/presentation/provider.dart/mazad_provider.dart';
import 'package:untitled/features/addMazad/presentation/widgets/container_with_tap1.dart';
import 'package:untitled/features/addMazad/presentation/widgets/container_with_tap2.dart';
class MazadPage extends StatelessWidget {
  const MazadPage({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider=Provider.of<MazadProvider>(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "اضافة اعلان",
            style: TextStyleClass.semiBigBoldStyle(),
          ),
        ),
        body: Container(
          height: 100.h,
          width: 100.w,
          padding: appPadding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
              ContainerTap1(),
              SizedBox(width: 6.w,),
              ContainerTap2()
                  ],
                ),
                SizedBox(height: 3.h,),
                myprovider.mywidget()
              ],
            ),
          ),
        ));
  }
}
