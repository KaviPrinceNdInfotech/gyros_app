// To parse this JSON data, do
//
//     final allProductModel = allProductModelFromJson(jsonString);

import 'dart:convert';

AllProductModel allProductModelFromJson(String str) =>
    AllProductModel.fromJson(json.decode(str));

String allProductModelToJson(AllProductModel data) =>
    json.encode(data.toJson());

class AllProductModel {
  AllProductModel({
    this.result,
    this.status,
    this.message,
  });

  List<Result>? result;
  int? status;
  String? message;

  factory AllProductModel.fromJson(Map<String, dynamic> json) =>
      AllProductModel(
        result:
            List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "result": List<dynamic>.from(result!.map((x) => x.toJson())),
        "status": status,
        "message": message,
      };
}

class Result {
  Result({
    this.id,
    this.productName,
    this.productImage,
    this.price,
    this.quentity,
    this.productDescription,
  });

  int? id;
  String? productName;
  String? productImage;
  int? price;
  dynamic? quentity;
  String? productDescription;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        productName: json["ProductName"],
        productImage: json["Product_Image"],
        price: json["Price"],
        quentity: json["Quentity"],
        productDescription: json["ProductDescription"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ProductName": productName,
        "Product_Image": productImage,
        "Price": price,
        "Quentity": quentity,
        "ProductDescription": productDescription,
      };
}
