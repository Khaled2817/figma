import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/sections/presentation/provider/provider_sections.dart';

class ContainerWidgetList1 extends StatelessWidget {
  const ContainerWidgetList1({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<ProviderSections>(context);
    return Padding(
      padding: EdgeInsets.only(right: 5.w),
      child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.w)),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                child: Column(
                  children: <Widget>[
                    Material(
                      color: Colors.white,
                      elevation: 1.w,
                      shape: CircleBorder(),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        // height: 15.h,
                        width: 20.w,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: myprovider.departmentModellist[index].widget,
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text("${myprovider.departmentModellist[index].text}",
                        style: TextStyleClass.normalStyle())
                  ],
                ),
              ),
              Positioned(
                top: 0.h,
                left: 14.w,
                child: Container(
                 // height: 1.h,
                 padding: EdgeInsets.symmetric(vertical: 0.1.h,horizontal: 3.w),
                 // width: 5.w,
                  child: Text("جديد",style:TextStyleClass.normalStyle(color: Colors.white),),
                  decoration: BoxDecoration(
                      color: Color(0xff4FBF67),
                      borderRadius: BorderRadius.circular(2.w)),
                ),
              ),
            ],
          )),
    );
  }
}
