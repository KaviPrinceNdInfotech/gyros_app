import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gyros_app/widgets/circular_loader.dart';
import 'package:http/http.dart' as http;

//import '../card_verification/aadhar_varification/card_verify1.dart';
import '../../services/api_provider.dart';
import '../../view/botttom_nav_bar/bottom_nav_bar_controller.dart';
import '../../view/botttom_nav_bar/bottom_navbar.dart';

class OtpTimerController extends GetxController {
  NavController _navController = Get.find();
  RxString elapsedTime = '02:00'.obs;
  int _start = 120;

  String result = '';

  // void VerifyotpApi() async {
  //   http.Response r = await ApiProvider.verifyotpApi(
  //       emailOtpString, phoneOtpString, email, phoneNumber);
  //   print('parameters');
  //   print(email);
  //   print(phoneNumber);
  //   print(phoneOtpString);
  //   print(emailOtpString);
  //   if (r.statusCode == 200) {
  //     //Get.to(() => CardVerifications1());
  //     //Get.to(()=>CreateNewPassword());
  //     //Get.offAll(()=>VerifyOtp());
  //     //Get.offAll(()=> BottomBarScreen(i: 0,));
  //   }
  // }

  void VerifyotpApi(var MobileOrEmail) async {
    http.Response r = await ApiProvider.OtpApi(MobileOrEmail, result);
    print(MobileOrEmail);
    print(result);
    if (r.statusCode == 200) {
      CallLoader.hideLoader();
      _navController.tabindex(0);
      Get.to(() => NavBar());
      //Get.to(()=>CreateNewPassword());
      //Get.offAll(()=>VerifyOtp());
      //Get.offAll(()=> BottomBarScreen(i: 0,));
    }
  }

  String? otpValidator(value) {
    if (value.length == 0) {
      return 'Plese enter otp';
    } else {
      return null;
    }
  }

  checkValidation(String MobileOrEmail) {
    //final isValidaton = otpKey.currentState!.validate();

    if (result.length == 4) {
      VerifyotpApi(MobileOrEmail);
    }
  }

  GlobalKey<FormState> otpKey = GlobalKey<FormState>();
  List<TextEditingController> otp = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  late Timer _timer;
  String formatTime(int secs) {
    var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
    var seconds = (secs % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  /* listenToSms() async {
    String? smsString;
    try {
      smsString = await AltSmsAutofill().listenForSms;
    } on Exception catch (e) {
      print(e.toString());
    }
    if (smsString != null) {
      var otpCode = smsString.substring(smsString.length - 4);
      for (var i = 0; i < 4; i++) {
        phoneotp[i].text = otpCode[i];
      }
    }
  }
 */
  @override
  void onInit() {
    startTimer();
    //listenToSms();
    super.onInit();
  }

  void otpdigits() {
    result = '';
    for (int i = 0; i < 4; i++) result += otp[i].text;
    print(result);
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start < 1) {
        timer.cancel();
        elapsedTime.value = '00:00';
      } else {
        _start = _start - 1;
        elapsedTime.value = formatTime(_start);
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    //AltSmsAutofill().unregisterListener();
    super.dispose();
  }

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }
}
