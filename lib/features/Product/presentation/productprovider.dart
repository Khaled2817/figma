import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/models/marketimagemodel.dart';
class ProductProvider with ChangeNotifier {
  int index=0;
  void changeIndex(int index){
    this.index=index;
    notifyListeners();
  }
List<MarketImageModel> marketImagelist=[
MarketImageModel(image:const AssetImage(Images.image1)),
MarketImageModel(image:const AssetImage(Images.image1) ),
MarketImageModel(image:const AssetImage(Images.image1) ),
MarketImageModel(image:const AssetImage(Images.image1) )
];
}
