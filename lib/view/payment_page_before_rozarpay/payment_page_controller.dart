import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
  final GlobalKey<FormState> paymentFormKey = GlobalKey<FormState>();
  //NavController _navController = Get.find();

  TextEditingController payment = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    payment;

    // _navController.tabindex(0);
    // Get.to(() => NavBar());
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    payment.dispose();
  }

  String? validatePayment(String value) {
    if (value.length < 2) {
      return "Password must be of 6 characters";
    }
    return null;
  }

  void checkPayment() {
    final isValid = paymentFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    paymentFormKey.currentState!.save();
  }
}
