import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';

class Appbar extends StatelessWidget {
  var controll = TextEditingController();

  Appbar({super.key});
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MarketProvider>(context);
    return Row(
      children: <Widget>[
        Expanded(
            child: Material(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.w)),
                child: Container(
                  height: 5.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.all(2.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                         Image.asset(Images.vector),
                           SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          "ابحث عن اي منتج لدينا",
                          style: TextStyleClass.normalStyle(
                              color: const Color(0xffBBBBBB)),
                        ),
                      ],
                    ),
                  ),
                )
                )),
        SizedBox(
          width: 5.w,
        ),
        Image.asset(Images.notification),
        SizedBox(
          width: 4.w,
        ),
        const SvgWidget(svg: Images.videofile),
      ],
    );
  }
}
