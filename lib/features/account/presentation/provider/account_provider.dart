import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/models/account_model.dart';

class AccountProvider extends ChangeNotifier{

List<AccountModel> acountSettinglist=[
AccountModel(imageSetting: AssetImage("${Images.Pinalt}"), text: 'عناويني', imageRow: AssetImage("${Images.iconrow}")),
AccountModel(imageSetting:AssetImage("${Images.sharwith}"), text: 'مشاركة التطبيق', imageRow: AssetImage("${Images.iconrow}")),
AccountModel(imageSetting: AssetImage("${Images.trueprotect}"), text: 'سياسة الاستخدام', imageRow: AssetImage("${Images.iconrow}")),
AccountModel(imageSetting:AssetImage("${Images.tagob}"), text: 'عن التطبيق', imageRow: AssetImage("${Images.iconrow}")),
AccountModel(imageSetting:AssetImage("${Images.phongreen}") , text: 'تواصل معنا', imageRow: AssetImage("${Images.iconrow}")),
AccountModel(imageSetting: AssetImage("${Images.basketremove}"), text: 'حذف الحساب', imageRow: AssetImage("${Images.iconrow}")),
];
Border borderside(int index){
if(index!=acountSettinglist.length-1){return Border(
      bottom: BorderSide(
        color:Color(0xffC1C5CE),
        width: 2,
      ),
    );
    }else{
      return Border(
                bottom: BorderSide(
          color:Colors.white
                ),
              );
    }
}
}