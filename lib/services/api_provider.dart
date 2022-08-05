// import 'dart:io';
// import 'dart:convert';
// import 'package:get_storage/get_storage.dart';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  static var baseUrl = '';
  static String token = '';
  static String categoryid = '';

  //SignUp birthday...........

  static addUserApi(
    var name,
    var phone_number,
    var email,
    var password,
    var confirmPassword,
  ) async {
    var url = baseUrl + 'user/signup';

    var body = {
      "name": name,
      "phone_number": phone_number,
      "email": email,
      "password": password,
      "confirmpassword": confirmPassword,
    };

    print(body);
    http.Response r = await http.post(
      Uri.parse(url),
      body: body,
    );
    print(r.body);
    if (r.statusCode == 200) {
      return r;
    } else {
      Get.snackbar('Error', 'Details');
      return r;
    }
  }

  //OTP Varification New 2....................................

  static verifyotpApi(
      var emailOtp, var smsOtp, var email, var phone_number) async {
    var url = baseUrl + 'user/signup-verification';

    var body = {
      "emailOtp": emailOtp,
      "smsOtp": smsOtp,
      "email": email,
      "phone_number": phone_number,
    };
    http.Response r = await http.post(
      Uri.parse(url),
      body: body,
    );
    print(r.body);
    if (r.statusCode == 200) {
      var prefs = GetStorage();
      prefs.write("token", json.decode(r.body)['data']['token']);
      token = prefs.read("token");
      return r;
    } else {
      Get.snackbar('Error', 'OTP');
      return r;
    }
  }
}
