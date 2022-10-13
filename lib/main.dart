import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gyros_app/controllers/binding_controllers/binding_controllers.dart';
import 'package:gyros_app/view/splash_screenss/splash_screen.dart';
import 'package:sizer/sizer.dart';

import 'models/all_product_model.dart';
import 'models/best_seller_models.dart';
import 'models/gift_box_model.dart';
import 'models/list_of_cart_model_api.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    Get.lazyPut(() => AllProductModel());
    Get.lazyPut(() => GiftcardModel());
    Get.lazyPut(() => BestSellerModel());
    Get.lazyPut(() => CartListModel());
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) async {
    await GetStorage.init();
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  //late CartController controller = Get.put(CartController());

  // CartNewController _cartNewController = Get.put(CartNewController());
  // FavCounterController _favCounterController = Get.put(FavCounterController());
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Widget SplashScreen = SplashScreenView(
    //   navigateRoute:
    //
    //       //SplashPage(),
    //       //DrawerPracticee(),
    //       // OnboardingPage(),
    //       LoginPage(),
    //   //HomePage(),
    //   // SignUp(),
    //   //NavBar(),
    //   duration: 6500,
    //   imageSize: 100,
    //   backgroundColor: Colors.white,
    // );
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        initialBinding: ControllerBinding(),
        //getPages: AppPages.routs,
        //initialRoute: Routs.INITIAL,
        debugShowCheckedModeBanner: false,

        ///todo theme mode
        //themeMode: ThemeMode.system,
        //title: 'Book Appointment',
        ///todo here theme light and dart you have to uncomments

        //theme: MyTheme.lightTheme(context),
        //darkTheme: MyTheme.darkTheme(context),
        home: SplashScreen(),
      );
    });
  }
}

/// _favCounterController.numOfItem.value.toString(),
/// var currentItem = _cartNewController.cartItems[index];
