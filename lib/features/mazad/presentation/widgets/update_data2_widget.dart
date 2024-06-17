import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/mazad/presentation/widgets/update_infomation_user_widget.dart';

class UpdateData2Widget extends StatelessWidget {
  const UpdateData2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        elevation: 0,
        leading: SvgWidget(svg: Images.backawro,),
        title: Text("تحديث البيانات",style: TextStyleClass.headBoldStyle(),),),
      body: Container(
        height: 100.h,
        width: 100.w,
        padding: appPadding,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>
            [
              SizedBox(height: 7.h,),
              UpdateInfomationUserWidget()
            ],
          ),
        ),
      ),
    );
  }
}
