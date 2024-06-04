import 'package:flutter/material.dart';
import 'package:untitled/config/app_color.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/models/walletModel.dart';
import 'package:untitled/core/widget/Svg_Icon/svg_widget.dart';

class WalletPageProvider with ChangeNotifier {
  List<WalletModel> walletListPage = [
WalletModel(priceText: '120 رس', headText: 'اضافة رصيد الى التطبيق', hintText: '15 March 2022, 8:20PM', containerimage: SvgWidget(svg: Images.lineOut), colorTextandcontainer:AppColor.secColor),
WalletModel(priceText: '120 رس', headText: 'شراء عبر التطبيق', hintText: '15 March 2022, 8:20PM', containerimage: SvgWidget(svg: Images.lineIn), colorTextandcontainer:AppColor.fifthColor),

  ];
}
