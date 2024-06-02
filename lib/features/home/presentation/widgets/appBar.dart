import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/Svg_Icon/svg_widget.dart';
import 'package:untitled/core/widget/TextFiled_widget/Textfilde_widget.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';
class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
     var myProvider = Provider.of<MarketProvider>(context);
    return Row(
      children: <Widget>[
        SvgWidget(
          svg: Images.videofile
        ),
        SizedBox(
          width: 2.w,
        ),
// // Text("${myProvider.basket.length}"),
//          SizedBox(
//           width: 2.w,
//         ),
       
        SvgWidget(
          svg: Images.notificationicon,
        ),
         SizedBox(
          width: 2.w,
        ),
Expanded(child: TextFormfiled())

      ],
    );
  }
}
