import 'package:flutter/material.dart';

class MarketModel {
  String image;
  String headtext;
  String dectext;
  String place;
  String marketName;
  MarketModel(
      {required this.dectext,
      required this.headtext,
      required this.image,
      required this.place,
      required this.marketName});
}
