import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gyros_app/view/login_page/login_pagee.dart';

import '../../widgets/circular_loader.dart';
import '../botttom_nav_bar/bottom_navbar.dart';
import '../intro_screen/intro_video/intro_video_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int splashtime = 5;
  @override
  void initState() {
    var prefs = GetStorage();
    String? checkToken = prefs.read('token');
    print(checkToken);
    if (checkToken != null) {
      token = checkToken;
    }
    Future.delayed(Duration(seconds: splashtime), () async {
      token != ''
          ? () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => NavBar(),
                ),
              )
          : () => Navigator.pushReplacement(
              //in this line you can write different page.....
              context,
              MaterialPageRoute(builder: (context) => LoginPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IntroVideo();
  }
}
