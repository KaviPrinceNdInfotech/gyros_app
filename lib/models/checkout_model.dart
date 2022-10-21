// To parse this JSON data, do
//
//     final checkoutModel = checkoutModelFromJson(jsonString);

import 'dart:convert';

CheckoutModel checkoutModelFromJson(String str) =>
    CheckoutModel.fromJson(json.decode(str));

String checkoutModelToJson(CheckoutModel data) => json.encode(data.toJson());

class CheckoutModel {
  CheckoutModel({
    this.status,
    this.message,
    this.result,
  });

  int? status;
  String? message;
  Result? result;

  factory CheckoutModel.fromJson(Map<String, dynamic> json) => CheckoutModel(
        status: json["status"],
        message: json["message"],
        result: Result.fromJson(json["result"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "result": result!.toJson(),
      };
}

class Result {
  Result({
    this.id,
    this.totalPrice,
    this.discount,
    this.deliveryCharge,
    this.totalCost,
  });

  int? id;
  String? totalPrice;
  String? discount;
  String? deliveryCharge;
  String? totalCost;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["Id"],
        totalPrice: json["TotalPrice"],
        discount: json["Discount"],
        deliveryCharge: json["DeliveryCharge"],
        totalCost: json["TotalCost"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "TotalPrice": totalPrice,
        "Discount": discount,
        "DeliveryCharge": deliveryCharge,
        "TotalCost": totalCost,
      };
}
