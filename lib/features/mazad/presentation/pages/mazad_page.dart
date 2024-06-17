import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/mazad/presentation/widgets/mazad_settings_widget.dart';

class MazadPage2 extends StatelessWidget {
  const MazadPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: SvgWidget(svg: Images.backawro,),
        title: Text("اعدادات المزادات",style: TextStyleClass.headBoldStyle(),),),
      body: Container(
        padding: appPadding,
        width: 100.w,
        height: 100.h,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // SizedBox(height:2.h ,),
 MazadSettingsWidget()
            ],
          ),
        ),
      ),
    );
  }
}
