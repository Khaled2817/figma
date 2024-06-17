import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/menu_information_comment/presentation/widgets/wrap_comment.dart';

class CommentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100.w,
              height: 10.h,
              padding: appPadding,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2.w),
                border: Border.all(color: Color(0xffDAD7D7))
              ),
              child: Row(
                children: <Widget>[
                  
                  Container(
                    height: 10.h,
                
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgWidget(svg: Images.starfram),
                        SizedBox(
                          height: 1.h,
                        ),
                         SvgWidget(svg: Images.tele),
                      ],
                    ),
                  ),
                      Expanded(
                        child: Container(
                          height: 7.h,
                          child: Column(
                                            children: [
                          Row(
                            children: [
                               Text("Lorem ipsum dolor",style: TextStyleClass.semiStyle(color:Colors.black),),
                              Text(": your comment",style: TextStyleClass.semiStyle(color: Color(0xffB983E7)),),
                             
                            ],
                          )
                                            ],
                                          ),
                        ),
                      ),
                 
                ],
              ),
            ),
          ),
          WrapComment()
        ],
      ),
    );
  }
}
