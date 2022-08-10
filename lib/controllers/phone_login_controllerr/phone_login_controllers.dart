import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginMobileController extends GetxController {
  final GlobalKey<FormState> MobileLoginFormKey = GlobalKey<FormState>();

  late TextEditingController phoneController;

  var phone = '';

  @override
  void onInit() {
    super.onInit();

    phoneController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    phoneController.dispose();
  }

  String? validatePhone(String value) {
    if (value.length < 10) {
      return "provide 10 digit phoneNumber";
    }
    return null;
  }

  void checkMobileLogin() {
    final isValid = MobileLoginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    MobileLoginFormKey.currentState!.save();
  }
}
