import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gyros_app/controllers/binding_controllers/binding_controllers.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:gyros_app/view/intro_screen/intro_video/intro_video_view.dart';
import 'package:gyros_app/view/onboardonds/onboarding_screens.dart';
import 'package:sizer/sizer.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) async {
    await GetStorage.init();
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // CartNewController _cartNewController = Get.put(CartNewController());
  // FavCounterController _favCounterController = Get.put(FavCounterController());
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget SplashScreen = SplashScreenView(
      navigateRoute:
          //SplashPage(),
          //DrawerPracticee(),
          OnboardingPage(),
      duration: 6500,
      imageSize: 100,
      //imageSrc: "lib/assets/video/intro video.mp4",
      //"lib/assets/intro video_1.gif",
      //"lib/assets/vot bag logo.png",
      //text: "WELCOME TO VOIT",

      backgroundColor: Colors.white,
    );
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        initialBinding: ControllerBinding(),
        //getPages: AppPages.routs,
        //initialRoute: Routs.INITIAL,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        //title: 'Book Appointment',
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        home: Column(
          children: [
            SizedBox(height: 0, child: SplashScreen),
            IntroVideo(),
            // Container(
            //   height: 100.h,
            //   width: 100.w,
            //   decoration: BoxDecoration(
            //     color: Colors.green,
            //     // image: DecorationImage(
            //     //     image: AssetImage('lib/assets/intro video_1.gif'),
            //     //     fit: BoxFit.fill),
            //   ),
            // ),
          ],
        ),
      );
    });
  }
}
