import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/models/catigoresmodelcard.dart';

class HomeProvider extends ChangeNotifier{

List<CatigoresModelCard> categoriesCard=[
CatigoresModelCard(image:const AssetImage(Images.flowbit), catigorName: 'الأسواق'),
CatigoresModelCard(image: const AssetImage(Images.storefront), catigorName: 'الجملة'),
CatigoresModelCard(image:const AssetImage(Images.iconpark), catigorName: 'المنتجين'),
CatigoresModelCard(image: const AssetImage(Images.matrial), catigorName: 'المصنعين'),
CatigoresModelCard(image: const AssetImage(Images.gameicon), catigorName: 'الموزعين'),
CatigoresModelCard(image:const AssetImage(Images.agent), catigorName: 'الوكلاء'),
CatigoresModelCard(image:const AssetImage(Images.carbon), catigorName: 'الموردين'),
CatigoresModelCard(image:const AssetImage(Images.iconparapp) , catigorName: 'أخرى'),
];
// Widget getHomePage(){
// Provider.of<BannerProvider>(Constants.globalContext()).getnearbanners();
// return HomePageApp();

// }
  
}