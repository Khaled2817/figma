import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/video_featurs/presentation/pages/video_page.dart';
import 'package:untitled/features/video_featurs/presentation/provider/video_provider.dart';
import 'package:untitled/features/video_featurs/presentation/widgets/side_icon.dart';
import 'package:video_player/video_player.dart';

class ContentView extends StatelessWidget {
  const ContentView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var myprovider =
        Provider.of<VideoProvider>(Constants.globalContext(), listen: false);
    final PageController controller = PageController();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
      
        elevation: 0,
          title: Text(
            "الرئيسيه",
            style: TextStyleClass.semiBigBoldStyle(color: Colors.white),
          ),
          leading: SvgWidget(
            svg: Images.search,
            color: Colors.white,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: SvgWidget(svg: Images.vediolist),
            )
          ],
          backgroundColor: Colors.transparent),
      body: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Stack(
          children: [
            Positioned.fill(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: PageView(
                      controller: controller,
                      physics: const AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      children: [
                        ...List.generate(
                            1,
                            (index) => VideoApp(
                                videoUrl:
                                    "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"))
                      ],
                    ))),
            Positioned(
              child: Row(
                children: [
                  SideBarIcons(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
