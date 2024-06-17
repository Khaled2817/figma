import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';
import 'package:untitled/features/market/presentation/widgets/Cards/Cards.dart';

class RowConatiner extends StatelessWidget {
  const RowConatiner({super.key});

  @override
  Widget build(BuildContext context) {
    var MyProvider = Provider.of<MarketProvider>(context);
    return SizedBox(
      width: 100.w,
      child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
        
        ...List.generate(3,(index)=>Padding(
          padding:  EdgeInsets.only(left: 2.w,right: 2.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
          Container(
            height:15.h,
            width: 46.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.w),
              image: DecorationImage(image: AssetImage("${Images.banner}"
          
            ),
            fit: BoxFit.cover)),
            child: Padding(
              padding:  EdgeInsets.all(2.w),
              child: Align(
                        alignment: Alignment.topRight,
                        child:Container(
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(1.w)
              ),
              child: Image.asset("${Images.phheart}",height: 5.w,width: 6.w,)), 
              ),
            ),
          ),
          SizedBox(height: 0.5.h,),
          Text("Azure Spanish",style: TextStyleClass.smallStyle(color:Color(0xff2F2E2E)),),
          SizedBox(height: 0.5.h,),
          Text("Al Reyad , Hay Elsefrat",style: TextStyleClass.smallStyle(color:Color(0xff767575)),),
          SizedBox(height: 0.5.h,),
          Row(children: <Widget>[Image.asset("${Images.p2}"),SizedBox(width: 2.w,), Image.asset("${Images.p1}")],)
          ],),
        ))
        
        ],),
      ),
    );
  }
}
