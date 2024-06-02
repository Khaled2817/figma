import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/helper_funct/api.dart';
import 'package:untitled/features/banner/presentation/provider/provider.dart';
import 'package:untitled/features/home/presentation/pages/home_page.dart';
import 'package:untitled/features/home/presentation/provider/homeprovider.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';
import 'package:untitled/injection_container.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
await ApiHandle.getInstance.init();
await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:[
 ChangeNotifierProvider.value(value: MarketProvider()),
 ChangeNotifierProvider.value(value: BannerProvider()..getnearbanners()),
 ChangeNotifierProvider.value(value: HomeProvider())
    ],
    child: Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          navigatorKey: Constants.navState,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home:HomePage()
        );
      }
    ));
  }
}
