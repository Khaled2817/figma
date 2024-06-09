import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/core/widget/text_field.dart';
import 'package:untitled/features/addMazad/presentation/provider.dart/mazad_provider.dart';
import 'package:untitled/features/addMazad/presentation/widgets/vedio_container.dart';

class AddPageShow extends StatelessWidget {
  const AddPageShow({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<MazadProvider>(context);
    return Column(
      children: [
        ...List.generate(
            myprovider.texteditingcontrollerList.length,
            (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${myprovider.textfieldtext2(index)}",
                      style: TextStyleClass.semiBigBoldStyle(
                          color: Color(0xffA1A1A1)),
                    ),   SizedBox(height: 1.h,),
                    TextFieldWidget(
                      controller: myprovider.texteditingcontrollerList[index],
                      //suffix: Icon(Icons.keyboard_arrow_down_rounded,size: 8.w,),
                    ),
                  ],
                )),
                   SizedBox(height: 4.h,),
        Container(
          width: 100.w,
          height: 7.h,
          child: ButtonWidget(
            onTap: () {},
             text: 'التالي',
            color: Color(0xff0087FE),
            textStyle: TextStyleClass.semiHeadBoldStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
