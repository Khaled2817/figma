import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/features/sections/presentation/provider/provider_sections.dart';
import 'package:untitled/features/sections/presentation/widgets/conatiner_widget_list2.dart';
import 'package:untitled/features/sections/presentation/widgets/container_widget_list1.dart';

class SectionWidgetHome extends StatelessWidget {
  const SectionWidgetHome({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider=Provider.of<ProviderSections>(context);
    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[Padding(
          padding:  EdgeInsets.only(right: 2.w,top: 1.h),
          child: Text("الاقسام",style: TextStyleClass.semiStyle(),),
        )],),
        SizedBox(height: 2.h,),
        Row(children: [...List.generate(myprovider.departmentModellist.length,(index)=>ContainerWidgetList1(index: index,))],),
        SizedBox(height: 2.h,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [...List.generate(myprovider.departmentModellist2.length,(index)=>ContainerWidgetList2(index: index,))],))
        ,

    ],);
  }
}