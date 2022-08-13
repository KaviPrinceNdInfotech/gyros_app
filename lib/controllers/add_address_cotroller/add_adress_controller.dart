import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAdressController extends GetxController {
  var isVisible = true.obs;

  final GlobalKey<FormState> AddressFormKey = GlobalKey<FormState>();

  late TextEditingController fullnameController,
      mobilenumberController,
      enterstateController,
      entercityController,
      enterareaController,
      enterhomeController,
      enterpinController;

  var fullname = '';
  var mobilenumber = '';
  var enterstate = '';
  var entercity = '';
  var enterarea = '';
  var enterhome = '';
  var enterpin = '';

  @override
  void onInit() {
    super.onInit();
    fullnameController = TextEditingController();
    mobilenumberController = TextEditingController();
    enterstateController = TextEditingController();
    entercityController = TextEditingController();
    enterareaController = TextEditingController();
    enterhomeController = TextEditingController();
    enterpinController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    fullnameController.dispose();
    mobilenumberController.dispose();
    enterstateController.dispose();
    entercityController.dispose();
    enterareaController.dispose();
    enterhomeController.dispose();
    enterpinController.dispose();
  }

  String? validateFullname(String value) {
    if (value.length < 2) {
      return "";
    }
    return null;
  }

  String? validateMobile(String value) {
    if (value.length < 10) {
      return "";
    }
    return null;
  }

  String? validateState(String value) {
    if (value.length < 2) {
      return "";
    }
    return null;
  }

  String? validateCity(String value) {
    if (value.length < 2) {
      return "";
    }
    return null;
  }

  String? validateArea(String value) {
    if (value.length < 2) {
      return "";
    }
    return null;
  }

  String? validateHome(String value) {
    if (value.length < 2) {
      return "";
    }
    return null;
  }

  String? validatePin(String value) {
    if (value.length < 6) {
      return "";
    }
    return null;
  }

  void checkAdress() {
    final isValid = AddressFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    AddressFormKey.currentState!.save();
  }
}
