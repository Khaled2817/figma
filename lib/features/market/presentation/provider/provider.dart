import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/helper_function/navigation.dart';
import 'package:untitled/core/models/marketimagemodel.dart';
import 'package:untitled/core/models/vediomodel.dart';
import 'package:untitled/features/market/data/models/markeymodel.dart';
import 'package:untitled/features/market/presentation/pages/marketpage.dart';
import 'package:untitled/features/market/presentation/widgets/photo/imagecard/cardwrapimage.dart';
import 'package:untitled/features/market/presentation/widgets/vedio/vediowrap.dart';

class MarketProvider with ChangeNotifier {
  bool image = true;
  Color changecolor() {
    if (image == true) return const Color(0xff264653);
    return Colors.white;
  }

  Color changecolorimage() {
    if (image == true) return Colors.white;
    return Colors.black;
  }

  Color changecolorvedio() {
    if (image == false) return const Color(0xff264653);
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
      return const CardWrapiamge();
    }
    return const CardWrapVedio();
  }

  List<MarketModel> listMarket = [
    MarketModel(
        dectext: " وصف عن المنتج",
        headtext: "بيتزا خضار مع اضافة صوصات ",
        image: Images.image22,
        place: "الرياض",
        marketName: "بهيج للاسماك",
        price: '25ر.س'),
    MarketModel(
        dectext: " وصف عن المنتج",
        headtext: "بيتزا خضار مع اضافة صوصات ",
        image: Images.image1,
        place: "القاهرة",
        marketName: "كرم الشام",
        price: '25ر.س'),
    MarketModel(
        dectext: " وصف عن المنتج",
        headtext: "بيتزا خضار مع اضافة صوصات ",
        image: Images.image22,
        place: "عمان",
        marketName: "فلافل",
        price: '25ر.س'),
    MarketModel(
        dectext: " وصف عن المنتج",
        headtext: "بيتزا خضار مع اضافة صوصات ",
        image: Images.image1,
        place: "فرنسا",
        marketName: "سفاري",
        price: '25ر.س')
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
    navP(const MyWidget());
  }

  void clear() {
    basket.clear();
    basket = listMarket;
  }

  List<VedioModel> vediolist = [
    VedioModel(
        containerimage: const AssetImage(Images.rectangle4),
        image: const AssetImage(Images.subtract),
        text: '2000'),
    VedioModel(
        containerimage: const AssetImage(Images.rectangle5),
        image: const AssetImage(Images.subtract),
        text: '2000'),
    VedioModel(
        containerimage: const AssetImage(Images.rectangle8),
        image: const AssetImage(Images.subtract),
        text: '2000'),
    VedioModel(
        containerimage: const AssetImage(Images.rectangle4),
        image: const AssetImage(Images.subtract),
        text: '2000'),
    VedioModel(
        containerimage: const AssetImage(Images.rectangle9),
        image: const AssetImage(Images.subtract),
        text: '2000'),
    VedioModel(
        containerimage: const AssetImage(Images.rectangle0),
        image: const AssetImage(Images.subtract),
        text: '2000'),
    VedioModel(
        containerimage: const AssetImage(Images.rectangle4),
        image: const AssetImage(Images.subtract),
        text: '2000'),
    VedioModel(
        containerimage: const AssetImage(Images.rectangle2),
        image: const AssetImage(Images.subtract),
        text: '2000'),
    VedioModel(
        containerimage: const AssetImage(Images.rectangle3),
        image: const AssetImage(Images.subtract),
        text: '2000')
  ];
  List<MarketImageModel> marketImagelist = [
    MarketImageModel(image: const AssetImage(Images.product1)),
    MarketImageModel(image: const AssetImage(Images.product)),
    MarketImageModel(image: const AssetImage(Images.product1)),
    MarketImageModel(image: const AssetImage(Images.product))
  ];
}
