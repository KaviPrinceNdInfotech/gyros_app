import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../services/api_provider.dart';
import '../../view/login_page/login_otp/login_with_otp.dart';
import '../../widgets/circular_loader.dart';
import '../otp_timer_controller/otp_timer_controllerss.dart';

class LoginMobileController extends GetxController {
  RxBool isLoading = false.obs;
  final GlobalKey<FormState> MobileLoginFormKey =
      GlobalKey(debugLabel: "MobileLoginFormKey");

  OtpTimerController _timeController = Get.put(OtpTimerController());

  // late TextEditingController phoneController;

  void phoneemailApi() async {
    CallLoader.loader();
    http.Response r = await ApiProvider.PhoneEmailApi(
      MobileOrEmail.text,
    );

    if (r.statusCode == 200) {
      // var data = jsonDecode(r.body);

      CallLoader.hideLoader();
      // Navigator.of(context).push(
      //   MaterialPageRoute(
      //       builder: (context) => Otp()),
      // );
      Get.to(() => Otp());

      // _timeController.email = MobileOrEmail.text;
      // _timeController.phoneNumber = MobileOrEmail.text;
    }
  }

  TextEditingController MobileOrEmail = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    MobileOrEmail;

    // phoneController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    MobileOrEmail.dispose();
  }

  String? validatePhone(String value) {
    if (value.length < 1) {
      return "provide valid Id";
    }
    return null;
  }

  void checkMobileLogin() {
    if (MobileLoginFormKey.currentState!.validate()) {
      phoneemailApi();
    }
    MobileLoginFormKey.currentState!.save();
  }
}
