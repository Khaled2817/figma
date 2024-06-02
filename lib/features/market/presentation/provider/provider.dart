import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_funct/navigation.dart';
import 'package:untitled/features/market/data/models/markeymodel.dart';
import 'package:untitled/features/market/presentation/pages/marketpage.dart';
import 'package:untitled/features/market/presentation/widgets/photo/imagecard/cardwrapimage.dart';
import 'package:untitled/features/market/presentation/widgets/vedio/vediowrap.dart';


class MarketProvider with ChangeNotifier {
  bool image = true;
  Color changecolor() {
    if (image == true) return Color(0xff264653);
    return Colors.white;
  }

  Color changecolorimage() {
    if (image == true) return Colors.white;
    return Colors.black;
  }

  Color changecolorvedio() {
    if (image == false) return Color(0xff264653);
    return Colors.white;
  }

  Color changecolorivedioimage() {
    if (image == false) return Colors.white;
    return Colors.black;
  }

  void taggel() {
    image = !image;
    notifyListeners();
  }

  Widget returnWidget() {
    if (image == true) {
      return CardWrapiamge();
    }
    return CardWrapVedio();
  }

  List<MarketModel> listMarket = [
    MarketModel(
        dectext: "وصف عن المنتج",
        headtext: "بيتزا مع اضافة خضروات",
        image: Images.food2,
        place: "الرياض",
        marketName: "بهيج للاسماك"),
    MarketModel(
        dectext: "وصف عن المنتج",
        headtext: "بيتزا مع اضافة خضروات",
        image: Images.foodd,
        place: "القاهرة",
        marketName: "كرم الشام"),
    MarketModel(
        dectext: "وصف عن المنتج",
        headtext: "بيتزا مع اضافة خضروات",
        image: Images.food2,
        place: "عمان",
        marketName: "فلافل"),
    MarketModel(
        dectext: "وصف عن المنتج",
        headtext: "بيتزا مع اضافة خضروات",
        image: Images.foodd,
        place: "فرنسا",
        marketName: "سفاري")
  ];
  String khaled = "khaled";
  changeName() {
    khaled = "khaled zaki 1919";
    notifyListeners();
  }

  List<MarketModel> basket = [];
  void Addbasket(MarketModel item) {
    basket.add(item);
    notifyListeners();
  }

  void goToMarketPage() {
    navP(MyWidget());
  }

  void clear() {
    basket.clear();
    basket = listMarket;
  }
}
