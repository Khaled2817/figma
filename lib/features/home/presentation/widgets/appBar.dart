import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/Svg_Icon/svg_widget.dart';
import 'package:untitled/core/widget/text_field.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';

class Appbar extends StatelessWidget {
  var controll = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MarketProvider>(context);
    return Row(
      children: <Widget>[
        SvgWidget(svg: Images.videofile),
        SizedBox(
          width: 4.w,
        ),
// // Text("${myProvider.basket.length}"),
//          SizedBox(
//           width: 2.w,
//         ),

        Image.asset("${Images.notification}"),
        SizedBox(
          width: 5.w,
        ),
        Expanded(
            child: Material(
                elevation: 3,
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)) ,
                child: Container(
                  height: 5.h,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(8.0),
                  color: Colors.white ),
                  child: Padding(
                    padding: EdgeInsets.all(2.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "ابحث عن اي منتج لدينا",
                          style: TextStyleClass.normalStyle(color: Color(0xffBBBBBB)),
                        ),
                        SizedBox(width: 2.w,),
                        Image.asset("${Images.vector}")
                      ],
                    ),
                  ),
                )))
      ],
    );
  }
}
