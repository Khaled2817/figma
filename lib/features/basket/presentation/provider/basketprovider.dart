import 'package:flutter/material.dart';
import 'package:untitled/core/helper_funct/navigation.dart';
import 'package:untitled/core/models/finalpricemodel.dart';
import 'package:untitled/features/basket/presentation/pages/basketdetails.dart';
class BasketProvider extends ChangeNotifier{
List<FinalPriceModel> finalPriceList =[
  FinalPriceModel(price: "رس 56.7", title: "المجموع"),
  FinalPriceModel(price: "رس 56.7", title: "قيمة الضريبه المضافه"),
  FinalPriceModel(price: "رس 56.7", title: "القيمه المستحقه")
];

void goToBasketDetailsPage(){
navP(BasketDetails());
}
}
