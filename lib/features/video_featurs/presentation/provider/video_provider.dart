import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/video_featurs/data/models/model_side_bar_icon.dart';

class VideoProvider extends ChangeNotifier{


 final List<String> videoUrl = [
    // "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    // // "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    // // "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
     "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"
  ];
final List<ModelSideBar> sideBarList = [
 ModelSideBar(icon: SvgWidget(svg: Images.followme,), text: ''),
 ModelSideBar(icon: SvgWidget(svg: Images.like,), text: '100'),
 ModelSideBar(icon: SvgWidget(svg: Images.comments,), text: '20'),
 ModelSideBar(icon: SvgWidget(svg: Images.star1,), text: '20'),
 ModelSideBar(icon: SvgWidget(svg: Images.sharvedio,), text: '20 k'),
  ];
void showbottomBar(context){

    showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 20.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6.w),
                                    topRight: Radius.circular(6.w)),
                              ),
                            );
                          });
}
  
}