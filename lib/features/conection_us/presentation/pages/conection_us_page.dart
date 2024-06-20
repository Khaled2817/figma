import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/widget/text_field.dart';
import 'package:untitled/features/conection_us/presentation/widgets/list_conect_us_widget.dart';

class ConectionUsPage extends StatelessWidget {
  const ConectionUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE3BB47),
        toolbarHeight: 8.h,
        title: Text(
          "تواصل معنا",
          style: TextStyleClass.bigStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: appPadding,
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
SizedBox(height: 10.h,),
ListConectUsWidget()
            ],
          ),
        ),
      ),
    );
  }
}
