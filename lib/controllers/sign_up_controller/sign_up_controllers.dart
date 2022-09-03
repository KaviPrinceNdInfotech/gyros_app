import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gyros_app/controllers/otp_timer_controller/otp_timer_controllerss.dart';
import 'package:gyros_app/services/api_provider.dart';
import 'package:gyros_app/view/botttom_nav_bar/bottom_navbar.dart';
import 'package:http/http.dart' as http;

// class SignUpPageController extends GetxController {
//   var isVisible = true.obs;
//   final GlobalKey<FormState> SignUpFormKey = GlobalKey<FormState>();
//
//   void calluserProfileApi() async {
//     print(name.toString());
//     http.Response r = await ApiProvider.addUserApi(
//       name.toString(),
//       phone.toString(),
//       email.toString(),
//       password.toString(),
//       confirmpassword.toString(),
//     );
//     if (r.statusCode == 200) {
//       //Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
//       //Get.to(()=> LoginPage());
//
//       // _timeController.email = email.text;
//       // _timeController.phoneNumber = number.text;
//       Get.to(() => NavBar());
//     }
//   }
//   //NavController _navController = Get.find();
//
//   late TextEditingController nameController,
//       emailController,
//       phoneController,
//       passwordController,
//       confirmpasswordController;
//   var name = '';
//   var email = '';
//   var phone = '';
//   var password = '';
//   var confirmpassword = '';
//   @override
//   void onInit() {
//     super.onInit();
//     nameController = TextEditingController();
//     emailController = TextEditingController();
//     phoneController = TextEditingController();
//     passwordController = TextEditingController();
//     confirmpasswordController = TextEditingController();
//     // _navController.tabindex(0);
//     // Get.to(() => NavBar());
//   }
//
//   @override
//   void onReady() {
//     super.onReady();
//   }
//
//   @override
//   void onClose() {
//     nameController.dispose();
//     emailController.dispose();
//     phoneController.dispose();
//     passwordController.dispose();
//     confirmpasswordController.dispose();
//   }
//
//   String? validateName(String value) {
//     if (value.length < 2) {
//       return "Provide valid name";
//     }
//     return null;
//   }
//
//   String? validateEmail(String value) {
//     if (!GetUtils.isEmail(value)) {
//       return "Provide valid Email";
//     }
//     return null;
//   }
//
//   String? validatePhone(String value) {
//     if (value.length < 10) {
//       return "Phone must be of 10 characters";
//     }
//     return null;
//   }
//
//   String? validatePassword(String value) {
//     if (value.length < 6) {
//       return "password should be 6 character";
//     }
//     return null;
//   }
//
//   String? validateConfirmPassword(String value) {
//     if (value.length < 6) {
//       return "re enter your password";
//     }
//     return null;
//   }
//
//   void checkSignUp() {
//     final isValid = SignUpFormKey.currentState!.validate();
//     if (!isValid) {
//       return;
//     }
//     SignUpFormKey.currentState!.save();
//   }
// }

class SignUpPageController extends GetxController {
  RxBool isLoading = true.obs;
  GlobalKey<FormState> signupform = GlobalKey(debugLabel: "signupform");
  OtpTimerController _timeController = Get.put(OtpTimerController());

  void calluserProfileApi() async {
    print(name.text);
    http.Response r = await ApiProvider.addUserApi(
      name.text,
      phone.text,
      email.text,
      password.text,
      confirmpassword.text,
    );
    if (r.statusCode == 200) {
      //Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
      //Get.to(()=> LoginPage());

      _timeController.email = email.text;
      _timeController.phoneNumber = phone.text;
      Get.to(() => NavBar());
    }
  }

  //from here add member and add patient both ccontroller function ..............

  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  //TextEditingController state = TextEditingController();
  //TextEditingController city = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  //this is City..........
  //Rx<String?> selectedCity = (null as String?).obs;

  //RxList<String> cities = <String>[].obs;

  //This is State....................

  //Rx<String?> selectedState = (null as String?).obs;

  //RxList<String> states = <String>[].obs;
  //................................

  @override
  void onInit() {
    // stateCityMap.forEach((key, value) {
    //   states.add(key);
    // });
    // states.refresh();
    super.onInit();

    name = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    confirmpassword = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    name.dispose();
    phone.dispose();
    email.dispose();
    password.dispose();
    confirmpassword.dispose();
  }

  String? validatename(value) {
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
    final isValid = signupform.currentState!.validate();
    if (!isValid) {
      return;
    }
    signupform.currentState!.save();
  }
}
