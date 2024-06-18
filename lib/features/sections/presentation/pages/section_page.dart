import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/features/sections/presentation/widgets/conatiner_widget_list2.dart';
import 'package:untitled/features/sections/presentation/widgets/textfilds_widget.dart';
import 'package:untitled/features/sections/presentation/widgets/wrap_sections_widget.dart';

class SectionPage extends StatelessWidget {
  const SectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE3BB47),
        centerTitle: true,
        title: Text(
          "اطلب بما يناسب سيارتك",
          style: TextStyleClass.bigStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: appPadding,
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[TextfildWidgetModel(),
            SizedBox(height: 4.h,),
            
            WrapSectionsWidget()]
          ),
        ),
      ),
    );
  }
}
