import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/core/widget/text_field.dart';

class TextfildWidgetModel extends StatelessWidget {
  const TextfildWidgetModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFieldWidget(
          borderRadius:4.w,
          borderColor: Color(0xff9EA2A5),
          controller: TextEditingController(),
          titleWidget: Row(children: <Widget>[SizedBox(width: 3.w,),Text("الفئة",style:TextStyleClass.semiStyle() ,)],),
          hintText: 'Sport auto c293',
          prefix: Image.asset("${Images.marcids}"),
          suffix:Icon(Icons.keyboard_arrow_down_rounded,size:6.w,color: Color(0xff9EA2A5),),
        ),
        Row(children: <Widget>[  Container(
          width: 45.w,
          child: TextFieldWidget(
            borderRadius:4.w,
            borderColor: Color(0xff9EA2A5),
            controller: TextEditingController(),
            titleWidget: Row(children: <Widget>[SizedBox(width: 3.w,),Text("النوع",style:TextStyleClass.semiStyle() ,)],),
            hintText: 'AMG Sport',
            prefix:SvgWidget(svg: Images.caryellow),
            suffix:Icon(Icons.keyboard_arrow_down_rounded,size:6.w,color: Color(0xff9EA2A5),),
          ),
        ), 
        
        SizedBox(width: 3.w,),
         Container(
          width: 45.w,
          child: TextFieldWidget(
            borderRadius:4.w,
            borderColor: Color(0xff9EA2A5),
            controller: TextEditingController(),
            titleWidget: Row(children: <Widget>[SizedBox(width: 3.w,),Text("موديل السنه",style:TextStyleClass.semiStyle() ,)],),
            hintText: '2024',
            prefix: Image.asset("${Images.donelist}"),
            suffix:Icon(Icons.keyboard_arrow_down_rounded,size:6.w,color: Color(0xff9EA2A5),),
          ),
        )],)
      ],
    );
  }
}
