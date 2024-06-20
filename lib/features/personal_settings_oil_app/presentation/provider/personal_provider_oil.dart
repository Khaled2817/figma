import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/conection_us/presentation/pages/conection_us_page.dart';
import 'package:untitled/features/personal_settings_oil_app/data/models/perosnal_oil_model.dart';

class PersonalProviderOil extends ChangeNotifier{


List<PerosnalOilModel> perosnalOilModelList=[

PerosnalOilModel(text:'تعديل الملف الشحصي' , widget1:SvgWidget(svg: Images.pp1,), widget2: SvgWidget(svg: Images.pp12,)),
PerosnalOilModel(text:'تغير كلمه المرور' , widget1:SvgWidget(svg: Images.pp2,), widget2: SvgWidget(svg: Images.pp12,)),
PerosnalOilModel(text:'تواصل معنا' , widget1:SvgWidget(svg: Images.pp3,), widget2: SvgWidget(svg: Images.pp12,)),
PerosnalOilModel(text:'عنواني' , widget1:SvgWidget(svg: Images.pp4,), widget2: SvgWidget(svg: Images.pp12,)),
PerosnalOilModel(text:'من نحن' , widget1:SvgWidget(svg: Images.pp5,), widget2: SvgWidget(svg: Images.pp12,)),
PerosnalOilModel(text:' سياسه الشروط و الاحكام' , widget1:SvgWidget(svg: Images.pp6,), widget2: SvgWidget(svg: Images.pp12,)),
PerosnalOilModel(text:'الخصوصيه' , widget1:SvgWidget(svg: Images.pp7,), widget2: SvgWidget(svg: Images.pp12,)),
PerosnalOilModel(text:'مشاركه التطبيق' , widget1:SvgWidget(svg: Images.pp8,), widget2: SvgWidget(svg: Images.pp12,)),
PerosnalOilModel(text:'اسئلة شائعة' , widget1:SvgWidget(svg: Images.pp9,), widget2: SvgWidget(svg: Images.pp12,)),
PerosnalOilModel(text:'حذف الحساب' , widget1:SvgWidget(svg: Images.pp10,), widget2: SvgWidget(svg: Images.pp12,))

];
void goTo(String text){
  if(text=="تواصل معنا")
  navP(ConectionUsPage());
}

}