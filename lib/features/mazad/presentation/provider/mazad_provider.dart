import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/core/models/text_field_model.dart';
import 'package:untitled/core/widget/back_button_widget.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/core/widget/textform_title_widget.dart';
import 'package:untitled/features/mazad/data/models/buy_information_model.dart';
import 'package:untitled/features/mazad/data/models/settings_model.dart';
import 'package:untitled/features/mazad/data/models/updating_data_model.dart';
import 'package:untitled/features/mazad/presentation/widgets/auction_orders_widget.dart';
import 'package:untitled/features/mazad/presentation/widgets/informaion_buy_widget.dart';
import 'package:untitled/features/mazad/presentation/widgets/update_data2_widget.dart';
import 'package:untitled/features/mazad/presentation/widgets/updating_data_widget.dart';

class MazadProvidersetting extends ChangeNotifier {
  List<SettingsModel> settingsModellist = [
    SettingsModel(
        text: 'تحديث بيانات',
        widget1: SvgWidget(
          svg: Images.refresh,
        ),
        widget2: SvgWidget(svg: Images.letfback)),
    SettingsModel(
        text: 'اختيار باقة التامين المسترد',
        widget1: SvgWidget(
          svg: Images.label1,
        ),
        widget2: SvgWidget(svg: Images.letfback)),
    SettingsModel(
        text: 'اوامر المزادات',
        widget1: SvgWidget(
          svg: Images.box1,
        ),
        widget2: SvgWidget(svg: Images.letfback))
  ];

  List<BuyInformationModel> buyInformationModelList = [
    BuyInformationModel(
        text1: "2000  ر.س",
        text2: 'يشمل جميع المزاد من ضمنها ( العقارت و السيارات )',
        widget: SvgWidget(svg: Images.layer1)),
    BuyInformationModel(
        text1: "2000  ر.س",
        text2: 'غير شامل العقار و السيارات',
        widget: SvgWidget(svg: Images.layer1))
  ];

  void goTo(String text) {
    if (text == "تحديث بيانات") navP(UpdatingDataWidget());
    if (text == "اختيار باقة التامين المسترد") navP(InformationBuyWidget());
    if (text == "اوامر المزادات") navP(AuctionOrdersWidget());
  }

  void goTto() {
    navP(UpdateData2Widget());
  }

  List<UpdatingDataModel> UpdatingDataModelList = [
    UpdatingDataModel(text1: "رقم العضويه", text2: '123456778'),
    UpdatingDataModel(text1: "رقم الهويه", text2: '-'),
    UpdatingDataModel(text1: "تاريخ التفعيل", text2: '-')
  ];
  List<TextFieldModel> textFieldModelList = [
    TextFieldModel(
        controller: TextEditingController(),
        title: TextformTitleWidget(text:"اختر نوع الهويه" , widget: SvgWidget(svg: Images.ss)),
        suffix: SvgWidget(svg: Images.downarow)),
    TextFieldModel(
        controller: TextEditingController(),
        title:TextformTitleWidget(text:   "تاريخ الميلاد" , widget: SvgWidget(svg: Images.ss)),
        suffix: SvgWidget(svg: Images.downarow)),
    TextFieldModel(
        title:TextformTitleWidget(text:    "رقم IBAN" , widget: SvgWidget(svg: Images.ss)),
        controller: TextEditingController(),
        suffix: SvgWidget(svg: Images.downarow)),
    TextFieldModel(
        title:TextformTitleWidget(text:  "اسم البنك" , widget: SvgWidget(svg: Images.ss)),
        controller: TextEditingController(),
        suffix: SvgWidget(svg: Images.downarow)),
    TextFieldModel(
        controller: TextEditingController(),
        title: TextformTitleWidget(text:  "البريد الاكتروني" , widget: SvgWidget(svg: Images.ss)),
        suffix: SvgWidget(svg: Images.downarow))
  ];
}
