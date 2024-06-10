import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/models/abstract_model.dart';
import 'package:untitled/features/abstractTranning/domain/entities/abstract_entity2.dart';

class AbstractProvider1 extends ChangeNotifier implements SuperAbstractModel {
  List<AbstractEntity2> abstractList = [
    AbstractEntity2(
      description: "شورما فراخ مع اضافة تومية وبطاطس",
      title: 'فاتة شورما فراخ',
      image: Images.foodd,
      price: '150 رس',
    ),
    AbstractEntity2(
      description: "شورما فراخ مع اضافة تومية وبطاطس",
      title: 'فاتة شورما فراخ',
      image: Images.foodd,
      price: '150 رس',
    ),
    AbstractEntity2(
      description: "شورما فراخ مع اضافة تومية وبطاطس",
      title: 'فاتة شورما فراخ',
      image: Images.foodd,
      price: '150 رس',
    ),
    AbstractEntity2(
      description: "شورما فراخ مع اضافة تومية وبطاطس",
      title: 'فاتة شورما فراخ',
      image: Images.foodd,
      price: '150 رس',
    )
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

}
