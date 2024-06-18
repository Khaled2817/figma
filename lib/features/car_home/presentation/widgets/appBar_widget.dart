import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/car_home/presentation/provider/home_page_provider.dart';

class AppbarWidgett extends StatelessWidget {
  const AppbarWidgett({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider=Provider.of<HomePageProvider>(context);
    return Padding(
      padding:  EdgeInsets.only(left: 4.w,),
      child: Row(
        children: <Widget>[
          SvgWidget(svg: Images.basketmarket),
          SizedBox(width: 3.5.w,),
          SvgWidget(svg: Images.searchicon),
          SizedBox(width: 3.5.w,),
          SvgWidget(svg: Images.notificationoil),
           SizedBox(width: 1.w,),
         Image.asset("${Images.logo1}",height: 25.h,width: 15.w,),
          InkWell(
            onTap: (){
              myprovider.goTo();
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 3.w),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.w),color: Colors.black),
              child: Text("اطلب بما يناسب سيارتك",style: TextStyleClass.smallStyle(color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
}
