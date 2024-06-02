import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/Svg_Icon/svg_widget.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';

class VedioWidget extends StatelessWidget {
  const VedioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var vedioprovider = Provider.of<MarketProvider>(context);
    return InkWell(
      onTap: (){

        vedioprovider.taggel();
      },
      child: Container(
        height: 5.h,
        width: 50.w,
        decoration: BoxDecoration(color:vedioprovider.changecolorvedio()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("الفيديوهات",style: TextStyleClass.normalBoldStyle(),),SizedBox(width: 2.w,),
             SvgWidget(svg: Images.videofile,color:vedioprovider.changecolorivedioimage(),),
        ],),),
    );
  }
}