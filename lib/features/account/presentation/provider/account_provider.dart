import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/models/account_model.dart';

class AccountProvider extends ChangeNotifier{

List<AccountModel> acountSettinglist=[
AccountModel(imageSetting: const AssetImage(Images.Pinalt), text: 'عناويني', imageRow: const AssetImage(Images.iconrow)),
AccountModel(imageSetting:const AssetImage(Images.sharwith), text: 'مشاركة التطبيق', imageRow: const AssetImage(Images.iconrow)),
AccountModel(imageSetting: const AssetImage(Images.trueprotect), text: 'سياسة الاستخدام', imageRow: const AssetImage(Images.iconrow)),
AccountModel(imageSetting:const AssetImage(Images.tagob), text: 'عن التطبيق', imageRow: const AssetImage(Images.iconrow)),
AccountModel(imageSetting:const AssetImage(Images.phongreen) , text: 'تواصل معنا', imageRow: const AssetImage(Images.iconrow)),
AccountModel(imageSetting: const AssetImage(Images.basketremove), text: 'حذف الحساب', imageRow: const AssetImage(Images.iconrow)),
];
Border borderside(int index){
if(index!=acountSettinglist.length-1){return const Border(
      bottom: BorderSide(
        color:Color(0xffC1C5CE),
        width: 2,
      ),
    );
    }else{
      return const Border(
                bottom: BorderSide(
          color:Colors.white
                ),
              );
    }
}
}