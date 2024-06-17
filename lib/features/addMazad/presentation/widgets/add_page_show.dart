import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/core/widget/list_text_field.dart';
import 'package:untitled/core/widget/text_field.dart';
import 'package:untitled/features/addMazad/presentation/provider.dart/mazad_provider.dart';

class AddPageShow extends StatelessWidget {
  const AddPageShow({super.key});
  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<MazadProvider>(context);
    return Column(
      children: [
         ListTextFieldWidget(inputs: myprovider.addPageshowlist,
         padding: 2.w,
          labelStyle: TextStyleClass.normalBoldStyle(color: Color(0xffB9C0C9)),),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[Padding(
              padding: EdgeInsets.only(right: 2.w),
              child: Text("وصف الاعلان",style: TextStyleClass.normalBoldStyle(color: Color(0xffB9C0C9)),),
            )],),
          Padding(

            padding:  EdgeInsets.only(left: 1.w,right: 1.w),
            child: TextFieldWidget(controller: TextEditingController(),maxLines: 5,),
          ),
                   SizedBox(height: 4.h,),
        Container(
          width: 100.w,
          height: 7.h,
          child: ButtonWidget(
            onTap: () {myprovider.goto();},
             text: 'التالي',
            color: Color(0xff0087FE),
            textStyle: TextStyleClass.semiHeadBoldStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
