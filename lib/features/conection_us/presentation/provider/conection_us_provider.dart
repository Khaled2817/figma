import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/features/conection_us/data/models/conection_us_model.dart';

class ConectionUsProvider extends ChangeNotifier{
List<ConectionUsModel> conectionUsModelList=[
  ConectionUsModel(height:8.h , text: 'الاسم'),
  ConectionUsModel(height:8.h , text: 'الايميل'),
  ConectionUsModel(height:8.h , text: 'العنوان'),
  ConectionUsModel(height:15.h , text: 'التفاصيل')

];


}