import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/core/widget/list_text_field.dart';
import 'package:untitled/core/widget/text_field.dart';
import 'package:untitled/features/addMazad/presentation/provider.dart/mazad_provider.dart';
import 'package:untitled/features/addMazad/presentation/widgets/vedio_container.dart';

class SpecilaPageshow extends StatelessWidget {
  const SpecilaPageshow({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<MazadProvider>(context);
    return Column(
      children: [
        VideoContainer(),
        SizedBox(
          height: 2.h,
        ),
        ListTextFieldWidget(
          padding: 2.w,
          inputs: myprovider.addPageshowlist2,
          labelStyle: TextStyleClass.normalBoldStyle(color: Color(0xffB9C0C9)),
        ),
        SizedBox(
          height: 4.h,
        ),
        Container(
          width: 100.w,
          height: 7.h,
          child: ButtonWidget(
            onTap: () {},
            text: 'اضافة المزاد',
            color: Color(0xff0087FE),
            textStyle: TextStyleClass.semiHeadBoldStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
