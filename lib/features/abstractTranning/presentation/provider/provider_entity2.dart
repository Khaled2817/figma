import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/core/models/abstract_model.dart';
import 'package:untitled/features/abstractTranning/domain/entities/abstract_entity.dart';
import 'package:untitled/features/home/presentation/pages/hompage.dart';

class AbstractProvider2 extends ChangeNotifier implements SuperAbstractModel{

List<AbstractEntity> abstractList=[
AbstractEntity(description:"بيتزا مارجريتا بالخضار" , title: 'بيتزا خضار مشكل جبن', image:Images.image1, price: '25 رس',),
AbstractEntity(description:"بيتزا مارجريتا بالخضار" , title: 'بيتزا خضار مشكل جبن', image:Images.image1, price: '25 رس',),
AbstractEntity(description:"بيتزا مارجريتا بالخضار" , title: 'بيتزا خضار مشكل جبن', image:Images.image1, price: '25 رس',),
AbstractEntity(description:"بيتزا مارجريتا بالخضار" , title: 'بيتزا خضار مشكل جبن', image:Images.image1, price: '25 رس',)
];

  @override
  List<AbstractModel>? superList() {
 return abstractList;
  }
    int index=0;
  @override
  void onTap(int index){
    this.index=index;
    notifyListeners();
  }
 getTitel(int index){
  return abstractList[index].title;
 }
}