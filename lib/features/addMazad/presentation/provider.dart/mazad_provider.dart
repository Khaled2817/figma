import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/core/models/text_field_model.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/core/widget/text_field.dart';
import 'package:untitled/features/addMazad/data/models/sallary_model.dart';
import 'package:untitled/features/addMazad/presentation/pages/add_advertisement.dart';
import 'package:untitled/features/addMazad/presentation/widgets/add_page_show.dart';
import 'package:untitled/features/addMazad/presentation/widgets/special_page_show1.dart';

class MazadProvider extends ChangeNotifier {
  bool specialToggel = true;
  Color? specialColor;
  Color? specialTextColor;
  Color textColor1() {
    if (specialToggel == true)
      return specialTextColor = Colors.white;
    else
      return specialTextColor = Color(0xff0087FE);
  }

  Color containerColor1() {
    if (specialToggel)
      return specialColor = Color(0xff0087FE);
    else
      return specialColor = Colors.white;
  }

  Color textColor2() {
    if (specialToggel == false)
      return specialTextColor = Colors.white;
    else
      return specialTextColor = Color(0xff0087FE);
  }

  Color containerColor2() {
    if (specialToggel == false)
      return specialColor = Color(0xff0087FE);
    else
      return specialColor = Colors.white;
  }

  void toggel1() {
    specialToggel = true;
    notifyListeners();
  }

  void toggel2() {
    specialToggel = false;
    notifyListeners();
  }



  Widget mywidget() {
    if (specialToggel == true)
      return AddPageShow();
    else
      return SpecilaPageshow();
  }

  List<TextFieldModel> addPageshowlist = [
    TextFieldModel(
        controller: TextEditingController(),
        label: 'اختر القسم الرئيسي',
        suffix: Icon(
          Icons.keyboard_arrow_down_rounded,
          //size: 9.w,
          color: Colors.black,
        )
        
        ),
    TextFieldModel(
        controller: TextEditingController(),
        label: 'اختر القسم الفرعي',
         suffix: Icon(
          Icons.keyboard_arrow_down_rounded,
          //size: 9.w,
          color: Colors.black,
        )),
    TextFieldModel(
        controller: TextEditingController(), label: 'عنوان الاعلان '),
    TextFieldModel(controller: TextEditingController(), label: 'وصف الاعلان ')
  ];
 List<Text> textList=[

Text("اختر القسم الرئيسي"),
Text("اختر القسم الفرعي"),
Text("اختر القسم الفرعي"),
Text("عنوان الاعلان"),
Text("وصف الاعلان")

 ];
   List<TextFieldModel> addPageshowlist2 = [
    TextFieldModel(
        controller: TextEditingController(),
        label: 'اختر القسم الرئيسي',
        
        suffix: Icon(
          Icons.keyboard_arrow_down_rounded,
         // size: 9.w,
          color: Colors.black,
        )
        
        ),
    TextFieldModel(
        controller: TextEditingController(),
        label: 'اختر القسم الفرعي',
         suffix: Icon(
          Icons.keyboard_arrow_down_rounded,
         // size: 9.w,
          color: Colors.black,
        )),
    TextFieldModel(
        controller: TextEditingController(),
         label: 'مدة المزاد' ,
         suffix: Icon(
          Icons.keyboard_arrow_down_rounded,
          //size: 9.w,
          color: Colors.black,
        )),
    TextFieldModel(controller: TextEditingController(),
     label: 'موقع المزاد'
    )
  ];





  

  List<SallaryModel> sallarListModel = [
    SallaryModel(
        icon: SvgWidget(svg: Images.dollardone),
        text1: 'افضل سعر',
        text2: 'لا يوجد سعر محدد سيتم قبول افضل سعر مقدم'),
    SallaryModel(
        icon: SvgWidget(svg: Images.dollarlist),
        text1: 'سعر قابل لتفاوض',
        text2: 'سيتمكن المشترين من تقديم طلبات شراء باقل من السعر المحدد    '),
    SallaryModel(
        icon: SvgWidget(svg: Images.box),
        text1: 'السعر الثابت',
        text2:
            'سيتمكن المشترين من الدفع مباشرة دون ارسال طلب شراء وانتظار القبول'),
  ];

  List<SallaryModel> contectionList = [
    SallaryModel(
        icon: SvgWidget(svg: Images.whats), text1: '', text2: 'واتساب'),
    SallaryModel(icon: SvgWidget(svg: Images.call), text1: '', text2: 'اتصال '),
    SallaryModel(icon: SvgWidget(svg: Images.mm), text1: '', text2: 'رسائل'),
  ];

  void goto() {
    navP(AddAdvertisement());
  }
}
