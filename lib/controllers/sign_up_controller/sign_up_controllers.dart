import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPageController extends GetxController {
  var isVisible = true.obs;
  final GlobalKey<FormState> SignUpFormKey = GlobalKey<FormState>();
  //NavController _navController = Get.find();

  late TextEditingController nameController,
      emailController,
      phoneController,
      passwordController,
      confirmpasswordController;
  var name = '';
  var email = '';
  var phone = '';
  var password = '';
  var confirmpassword = '';
  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    confirmpasswordController = TextEditingController();
    // _navController.tabindex(0);
    // Get.to(() => NavBar());
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }

  String? validateName(String value) {
    if (value.length < 2) {
      return "Provide valid name";
    }
    return null;
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePhone(String value) {
    if (value.length < 10) {
      return "Phone must be of 10 characters";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "password should be 6 character";
    }
    return null;
  }

  String? validateConfirmPassword(String value) {
    if (value.length < 6) {
      return "re enter your password";
    }
    return null;
  }

  void checkSignUp() {
    final isValid = SignUpFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    SignUpFormKey.currentState!.save();
  }
}
