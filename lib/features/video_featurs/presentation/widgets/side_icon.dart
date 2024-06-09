import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/video_featurs/presentation/provider/video_provider.dart';

class SideBarIcons extends StatelessWidget {
  const SideBarIcons({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider =
        Provider.of<VideoProvider>(Constants.globalContext(), listen: false);
    return Container(
      height: 100.h,
      width: 100.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 7.h,
                  width: 15.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.w),
                      image: DecorationImage(
                          image: AssetImage("${Images.prof1}"))),
                ),
                SvgWidget(svg: Images.like),
                SizedBox(
                  height: 2.w,
                ),
                Text("250,5K"),
                SizedBox(
                  height: 2.w,
                ),
                InkWell(
                    onTap: () {
                    myprovider.showbottomBar(context);
                    },
                    child: SvgWidget(svg: Images.comments)),
                SizedBox(
                  height: 2.w,
                ),
                Text("100"),
                SizedBox(
                  height: 2.w,
                ),
                SvgWidget(svg: Images.star1),
                SizedBox(
                  height: 2.w,
                ),
                Text("4.5"),
                SizedBox(
                  height: 2.w,
                ),
                SvgWidget(svg: Images.sharvedio),
                SizedBox(
                  height: 2.w,
                ),
                Text("132,5K"),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  height: 6.h,
                  width: 13.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.w),
                      color: Color(0xffE9C469)),
                  child: Image.asset(
                    "${Images.pinaltfill}",
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          Container(
            height: 50.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "اسم الحساب ",
                  style: TextStyleClass.headStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "العنوان الخاص بالمتجر",
                  style: TextStyleClass.smallBoldStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 2.3.h,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


// Padding(
//       padding:  EdgeInsets.only(right:4.w),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//       ...List.generate(5,(index)=>
      
//       Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//       myprovider.sideBarList[index].icon,
//       SizedBox(height: 0.5.h,),
//       Text("${myprovider.sideBarList[index].text}")
//       ,
//         ],
//       ),
      
      
      
//       ),
//           Row(children: <Widget>[
//             Column(
//            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: <Widget>[Text("اسم الحساب",style: TextStyleClass.semiStyle(),),
          
//           Row(
//             children: [
//                 Container(
//             height: 7.h,
//             width: 15.w,
//             decoration: BoxDecoration(
//               color: Colors.red,
//               borderRadius: BorderRadius.circular(15.w)
//             ),
//           ),  Text("العنوان الخاص بالمتجر",style: TextStyleClass.smallStyle(color:Colors.white),),
//             ],
//           )
//           ],)
//           ,
        
//           ],)
//       ],)