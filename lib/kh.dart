import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/helper_funct/api.dart';
import 'package:untitled/features/Product/presentation/productprovider.dart';
import 'package:untitled/features/account/presentation/provider/account_provider.dart';
import 'package:untitled/features/address/presentation/provider/addressesProvider.dart';
import 'package:untitled/features/banner/presentation/provider/provider.dart';
import 'package:untitled/features/basket/presentation/provider/basketprovider.dart';
import 'package:untitled/features/home/presentation/provider/homeprovider.dart';
import 'package:untitled/features/main/presentation/mainpageprovider.dart';
import 'package:untitled/features/main/presentation/pages/main.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';
import 'package:untitled/features/wallet/presentation/provider/walletPageProvider.dart';
import 'package:untitled/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ApiHandle.getInstance.init();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: MarketProvider()),
          ChangeNotifierProvider.value(value: BannerProvider()..getnearbanners()),
          ChangeNotifierProvider.value(value: HomeProvider()),
          ChangeNotifierProvider.value(value: BasketProvider()),
          ChangeNotifierProvider.value(value: MainPageProvider()),
          ChangeNotifierProvider.value(value: ProductProvider()),
          ChangeNotifierProvider.value(value: AccountProvider()),
          ChangeNotifierProvider.value(value: WalletPageProvider()),
          ChangeNotifierProvider.value(value: AddressesProvider())
        ],
        child: Sizer(builder: (context, orientation, deviceType) {
          return MaterialApp(
              navigatorKey: Constants.navState,
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                appBarTheme: AppBarTheme(backgroundColor: Colors.white),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor:Color(0xff25A189),
                    selectedIconTheme: IconThemeData(color:Color(0xff25A189)),
                    unselectedIconTheme: IconThemeData(color:Colors.grey),
                    unselectedItemColor: Colors.grey,
                    elevation: 50.0,
                    backgroundColor: Colors.white),
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: MainPage());
        }));
  }
}
