import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/button_widget.dart';
import 'package:untitled/core/widget/list_text_field.dart';
import 'package:untitled/features/mazad/presentation/provider/mazad_provider.dart';

class UpdateInfomationUserWidget extends StatelessWidget {
  const UpdateInfomationUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<MazadProvidersetting>(context);
    return Container(
    width: 100.w,
      padding: EdgeInsets.all(2.w),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
        Positioned(
          child: Material(
            elevation: 1.w,
       //  borderOnForeground: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                  border: Border.all(color: Color.fromARGB(255, 237, 234, 234)),
                  borderRadius: BorderRadius.circular(2.w)),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height:7.h,
                  ),
                     Padding(
                       padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                       child: ListTextFieldWidget(
                                           inputs: myprovider.textFieldModelList,
                                         ),
                     ),
                  
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                 padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                    child: ButtonWidget(
                        color: Color(0xff0087FE),
                        onTap: () {},
                        text: "تأكيد",
                        textStyle:
                            TextStyleClass.normalBoldStyle(color: Colors.white)),
                  ),
                          SizedBox(height: 4.h,)
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: -20.w,
          left:35.w,
            child: Container(
              height: 18.h,
              width: 18.w,
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 237, 234, 234)),
                shape:BoxShape .circle,
                image: DecorationImage(image:AssetImage("${Images.me}"),fit: BoxFit.contain)
              ),
            )
            )
      ]),
    );
  }
}
