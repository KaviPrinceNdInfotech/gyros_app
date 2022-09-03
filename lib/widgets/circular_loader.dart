import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CallLoader {
  static loader() {
    Get.defaultDialog(
        title: "",
        content: Column(
          children: [CircularProgressIndicator(), Text("Loading......")],
        ));
  }

  static hideLoader() {
    if (Get.isDialogOpen!) Get.back();
  }

  static successDialog([String? description]) {
    Get.defaultDialog(
        title: "Sucess",
        content: Column(
          children: [
            if (description != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  description,
                ),
              ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Okay"))
          ],
        ));
  }

  static errorDialog(String msg) {
    Get.defaultDialog(
        title: "Error",
        content: Column(
          children: [
            Text(msg),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Okay"))
          ],
        ));
  }
}
