import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/features/sections/presentation/provider/provider_sections.dart';

class ContainerWidgetList2 extends StatelessWidget {
  const ContainerWidgetList2({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<ProviderSections>(context);
    return Padding(
      padding: EdgeInsets.all(1.w),
      child: Container(
        height: 18.h,
        width: 30.w,
        padding: EdgeInsets.all(2.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.w),
            border: Border.all(color: Color(0xffE3BB47))),
        child:Stack(
          
          clipBehavior: Clip.none,
          children: [ Positioned(
          child: Column(
            children: <Widget>[
               myprovider.departmentModellist2[index].widget,
               SizedBox(height:0.5.h ,),
              Row(
                children: <Widget>[
                  Text(
                    "${myprovider.departmentModellist2[index].text1}",
                    style: TextStyleClass.normalStyle(),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "${myprovider.departmentModellist2[index].text2}",
                    style: TextStyleClass.normalStyle(color: Color(0xffE3BB47)),
                  )
                ],
              )
            ],
          ),
        ),
          Positioned(
                top: -2.h,
                left: -5.w,
                child: Container(
                 // height: 1.h,
                 padding: EdgeInsets.symmetric(vertical: 0.2.h,horizontal: 2.w),
                 // width: 5.w,
                  child: Text("خصم ٢٠٪",style:TextStyleClass.tinyStyle(color: Colors.white),),
                  decoration: BoxDecoration(
                      color: Color(0xffCF000A),
                      borderRadius: BorderRadius.circular(2.w)),
                ))
        
        ],),
      ),
    );
  }
}
