// To parse this JSON data, do
//
//     final cartListModel = cartListModelFromJson(jsonString);

import 'dart:convert';

CartListModel cartListModelFromJson(String str) =>
    CartListModel.fromJson(json.decode(str));

String cartListModelToJson(CartListModel data) => json.encode(data.toJson());
//

class CartListModel {
  CartListModel({
    this.result,
    this.status,
    this.message,
  });

  List<Result>? result;
  int? status;
  String? message;

  factory CartListModel.fromJson(Map<String, dynamic> json) => CartListModel(
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
    this.categoryName,
    this.image,
    this.weight,
    this.matrix,
    this.qty,
    this.userId,
    this.createDate,
    this.price,
  });

  int? id;
  String? productName;
  String? categoryName;
  String? image;
  String? weight;
  String? matrix;
  String? qty;
  int? userId;
  DateTime? createDate;
  String? price;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["Id"],
        productName: json["ProductName"],
        categoryName: json["CategoryName"],
        image: json["Image"],
        weight: json["Weight"],
        matrix: json["Matrix"],
        qty: json["Qty"],
        userId: json["UserId"],
        createDate: DateTime.parse(json["CreateDate"]),
        price: json["Price"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "ProductName": productName,
        "CategoryName": categoryName,
        "Image": image,
        "Weight": weight,
        "Matrix": matrix,
        "Qty": qty,
        "UserId": userId,
        "CreateDate": createDate!.toIso8601String(),
        "Price": price,
      };
}
