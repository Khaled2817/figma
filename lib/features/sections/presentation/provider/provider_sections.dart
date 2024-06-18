import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/features/sections/data/models/department_model.dart';
import 'package:untitled/features/sections/data/models/department_model2.dart';
import 'package:untitled/features/productsectioncar/presentation/pages/product_page.dart';

class ProviderSections extends ChangeNotifier {
  List<DepartmentModel> departmentModellist = [
    DepartmentModel(text: 'FUCHS.', widget: Image.asset("${Images.fuchs}")),
    DepartmentModel(text: 'FUCHS.', widget: Image.asset("${Images.fuchs}")),
    DepartmentModel(text: 'FUCHS.', widget: Image.asset("${Images.fuchs}")),
    DepartmentModel(text: 'FUCHS.', widget: Image.asset("${Images.fuchs}")),
  ];
  List<DepartmentModellist2> departmentModellist2 = [
    DepartmentModellist2(
        widget: Image.asset("${Images.sssss3}"),
        text1: 'زيت موبيل ٢ليتر',
        text2: '200 ريال',
        text3: ''),
    DepartmentModellist2(
        widget: Image.asset("${Images.ssss2}"),
        text1: 'زيت موبيل ٢ليتر',
        text2: '200 ريال',
        text3: ''),
    DepartmentModellist2(
        widget: Image.asset("${Images.sssss1}"),
        text1: 'زيت موبيل ٢ليتر',
        text2: '200 ريال',
        text3: ''),
  ];
   List<DepartmentModellist2> departmentModellist3 = [
    DepartmentModellist2(
        widget: Image.asset("${Images.ss55}"),
        text1: 'زيت موبيل ٢ليتر',
        text2: '200 ريال',
        text3: ''),
    DepartmentModellist2(
        widget: Image.asset("${Images.ss11}"),
        text1: 'زيت موبيل ٢ليتر',
        text2: '200 ريال',
        text3: ''),
    DepartmentModellist2(
        widget: Image.asset("${Images.ss88}"),
        text1: 'زيت موبيل ٢ليتر',
        text2: '200 ريال',
        text3: ''),
        DepartmentModellist2(
        widget: Image.asset("${Images.ss99}"),
        text1: 'زيت موبيل ٢ليتر',
        text2: '200 ريال',
        text3: ''),
        DepartmentModellist2(
        widget: Image.asset("${Images.ss77}"),
        text1: 'زيت موبيل ٢ليتر',
        text2: '200 ريال',
        text3: ''),
        DepartmentModellist2(
        widget: Image.asset("${Images.ss66}"),
        text1: 'زيت موبيل ٢ليتر',
        text2: '200 ريال',
        text3: '')
  ];
  void goTo(){

    navP(ProductSectionPage());
  }

}
