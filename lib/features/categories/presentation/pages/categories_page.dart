import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/core/widget/text_field.dart';
import 'package:untitled/features/categories/presentation/widgets/categories_bottoms.dart';
import 'package:untitled/features/market/presentation/widgets/Cards/cardwrap.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    var controll = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "ابحث",
          style: TextStyleClass.semiBigBoldStyle(),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 8.w,
        ),
      ),
      body: Container(
        color: Colors.white,
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(4.w),
                child: Material(
                    elevation: 0.6.w,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.w)),
                    child: TextFieldWidget(
                      borderColor: Colors.white,
                      controller: controll,
                      hintText: "ابحث عن اي منتج لدينا",
                      hintStyle:
                          TextStyleClass.semiStyle(color: Color(0xffBBBBBB)),
                      prefix: const SvgWidget(svg: Images.search),
                      textAlign: TextAlign.center,
                    )),
              ),
              SizedBox(
                height: 4.h,
              ),
              const CategoriesButtons(),
              SizedBox(
                height: 2.h,
              ),
              Container(padding: appPadding, child: const CardWrap())
            ],
          ),
        ),
      ),
    );
  }
}
