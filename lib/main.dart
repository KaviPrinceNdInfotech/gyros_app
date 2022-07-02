import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:sizer/sizer.dart';

import 'view/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) async {
    await GetStorage.init();
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        //getPages: AppPages.routs,
        //initialRoute: Routs.INITIAL,

        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        //title: 'Book Appointment',
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        home: WelcomePage(),
      );
    });
  }
}
