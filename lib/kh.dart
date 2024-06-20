import 'dart:io';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/features/Product/presentation/productprovider.dart';
import 'package:untitled/features/abstractTranning/presentation/provider/provider_entity1.dart';
import 'package:untitled/features/abstractTranning/presentation/provider/provider_entity2.dart';
import 'package:untitled/features/account/presentation/provider/account_provider.dart';
import 'package:untitled/features/addMazad/presentation/provider.dart/mazad_provider.dart';
import 'package:untitled/features/add_order/presentation/provider/provider_add_item.dart';
import 'package:untitled/features/address/presentation/provider/addressesProvider.dart';
import 'package:untitled/features/banner/presentation/provider/provider.dart';
import 'package:untitled/features/basket/presentation/provider/basketprovider.dart';
import 'package:untitled/features/basketcar/presentation/provider/payment_provider.dart';
import 'package:untitled/features/car_home/presentation/pages/home_page.dart';
import 'package:untitled/features/car_home/presentation/provider/home_page_provider.dart';
import 'package:untitled/features/categories/presentation/provider/categories_provider.dart';
import 'package:untitled/features/check_out_order/presentation/provider/Provider.dart';
import 'package:untitled/features/conection_us/presentation/pages/conection_us_page.dart';
import 'package:untitled/features/conection_us/presentation/provider/conection_us_provider.dart';
import 'package:untitled/features/home/presentation/provider/homeprovider.dart';
import 'package:untitled/features/language/domain/entities/app_localizations.dart';
import 'package:untitled/features/language/presentation/provider/language_provider.dart';
import 'package:untitled/features/main/presentation/pages/main_page.dart';

import 'package:untitled/features/main/presentation/provider/main_page_provider.dart';
import 'package:untitled/features/market/presentation/provider/provider.dart';

import 'package:untitled/features/mazad/presentation/provider/mazad_provider.dart';

import 'package:untitled/features/menu_information_comment/presentation/provider/menu_provider.dart';
import 'package:untitled/features/order_oil/presentation/provider/orders_provider_oil.dart';
import 'package:untitled/features/order_oil_details/presentation/provider/order_oil_details_provider.dart';

import 'package:untitled/features/order_stat/presentation/provider/orderstatus_provider.dart';
import 'package:untitled/features/orders/presentation/provider/order_provider.dart';
import 'package:untitled/features/paymentcarapp/presentation/provider/payment_provider.dart';
import 'package:untitled/features/personal_settings_oil_app/presentation/provider/personal_provider_oil.dart';
import 'package:untitled/features/productsectioncar/presentation/provider/product_section_provider.dart';
import 'package:untitled/features/sections/presentation/provider/provider_sections.dart';

import 'package:untitled/features/video_featurs/presentation/provider/video_provider.dart';

import 'package:untitled/features/wallet/presentation/provider/walletPageProvider.dart';
import 'package:untitled/injection_container.dart';
import 'config/app_color.dart';
import 'config/text_style.dart';
import 'config/theme.dart';
import 'core/constants/constants.dart';
import 'core/helper_function/api.dart';
import 'core/helper_function/prefs.dart';

// @pragma('vm:entry-point')
// Future<void> firebaseMessagingBackgroundHandler(RemoteMessage event) async {
//   if (event.notification != null) {
//     appNotifications(event.notification!,
//         click: true, fromWhereClicked: 3, payload: event.data);
//   }
// }

// Future<void> localMessagingBackgroundHandler(NotificationResponse pay) async {
//   clickNoti(pay.payload!);
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // HttpOverrides.global = MyHttpOverrides();
  // Platform.isAndroid
  //     ? await Firebase.initializeApp(
  //         options: const FirebaseOptions(
  //             apiKey: 'AIzaSyChdhK1qTNqoSwcwMSXEKcpSI_7AirL1sI',
  //             appId: '1:513756547789:android:e2c9a1a3360af0bb127784',
  //             messagingSenderId: '513756547789',
  //             projectId: 'mazij-f9fd7'))
  //     : await Firebase.initializeApp();
  // await notificationsFirebase();
  // FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  // await NotificationLocalClass.init();
  LanguageProvider language = LanguageProvider();
  language.fetchLocale();
  await initializeDependencies();
  await startSharedPref();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
      overlays: [SystemUiOverlay.bottom]);
  await ApiHandle.getInstance.init();
  runApp(MyApp(
    language: language,
  ));
}

RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class MyApp extends StatelessWidget {
  final LanguageProvider language;
  const MyApp({required this.language, super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
         builder: (context, orientation, deviceType) {
          Constants.isTablet = (deviceType == DeviceType.tablet);
          return MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: MarketProvider()),
            ChangeNotifierProvider.value(
                value: BannerProvider()..getnearbanners()),
            ChangeNotifierProvider.value(value: HomeProvider()),
            ChangeNotifierProvider.value(value: BasketProvider()),
         //   ChangeNotifierProvider.value(value: MainPageProvider()),
            ChangeNotifierProvider.value(value: ProductProvider()),
            ChangeNotifierProvider.value(value: AccountProvider()),
            ChangeNotifierProvider.value(value: WalletPageProvider()),
            ChangeNotifierProvider.value(value: AddressesProvider()),
            ChangeNotifierProvider.value(value: AbstractProvider1()),
            ChangeNotifierProvider.value(value: AbstractProvider2()),
            ChangeNotifierProvider.value(value: MainProvider()),
            ChangeNotifierProvider.value(value: CategoriesProvider()),
            ChangeNotifierProvider.value(value: VideoProvider()),
            ChangeNotifierProvider.value(value: MazadProvider()),
            ChangeNotifierProvider.value(value: OrderProvider()),
            ChangeNotifierProvider.value(value: OrderstatusProvider()),
            ChangeNotifierProvider.value(value: CheckOutProvider()),
            ChangeNotifierProvider.value(value: AddOrderProvider()),
            ChangeNotifierProvider.value(value: MenuProvider()),
            ChangeNotifierProvider.value(value: MazadProvidersetting()),
            ChangeNotifierProvider.value(value: HomePageProvider()),
            ChangeNotifierProvider.value(value: ProviderSections()),
            ChangeNotifierProvider.value(value: ProductSectionProvider()),
            ChangeNotifierProvider.value(value: PaymentProvideroil()),
            ChangeNotifierProvider.value(value: PaymentProvider()),
            ChangeNotifierProvider.value(value: OrdersProviderOil()),
            ChangeNotifierProvider.value(value: OrderOilDetailsProvider()),
            ChangeNotifierProvider.value(value: PersonalProviderOil()),
            ChangeNotifierProvider.value(value: ConectionUsProvider()),
          ],
          child: ChangeNotifierProvider<LanguageProvider>(
              create: (_) => language,
              child: Consumer<LanguageProvider>(builder: (context, lang, _) {
                return AnnotatedRegion(
                    value: barColor(),
                    child: MaterialApp(
                            title: 'khaled',
                            debugShowCheckedModeBanner: false,
                            navigatorObservers: [routeObserver],
                            navigatorKey: Constants.navState,
                            locale: lang.appLocal,
                            supportedLocales: LanguageProvider.languages,
                            builder: (context, child) {
                              return Theme(
      
                                  data: defaultTheme.copyWith(
                                      appBarTheme: AppBarTheme(
                              
                                    color: Colors.white,
                                    centerTitle: true,
                                    foregroundColor: AppColor.defaultColor,
                                    titleTextStyle:
                                        TextStyleClass.semiHeadBoldStyle(
                                            color: AppColor.defaultColor),
                                  )),
                                  child: Container(
                                      color: Colors.white,
                                      child: SafeArea(
                                          bottom: true,
                                          child: SizedBox(
                                              width: 100.w,
                                              height: 100.h,
                                              child:
                                     Stack(children: [child!])))));
                            },
                            localizationsDelegates: const [
                              CountryLocalizations.delegate,
                              AppLocalizations.delegate,
                              GlobalMaterialLocalizations.delegate,
                              GlobalWidgetsLocalizations.delegate,
                              GlobalCupertinoLocalizations.delegate
                            ],
                            theme: defaultTheme,
                            home: MainPage()
                          )
                    
                    );
              })));},
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
