// To parse this JSON data, do
//
//     final flashSellListProduct = flashSellListProductFromJson(jsonString);

import 'dart:convert';

FlashSellListProduct flashSellListProductFromJson(String str) =>
    FlashSellListProduct.fromJson(json.decode(str));

String flashSellListProductToJson(FlashSellListProduct data) =>
    json.encode(data.toJson());

class FlashSellListProduct {
  FlashSellListProduct({
    this.result,
    this.status,
    this.message,
  });

  List<Result>? result;
  int? status;
  String? message;

  factory FlashSellListProduct.fromJson(Map<String, dynamic> json) =>
      FlashSellListProduct(
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
    this.price,
    this.productImage,
    this.discount,
    this.weight1,
    this.pkt1,
    this.sellerOption,
    this.qty1,
    this.productDescription,
  });

  int? id;
  String? productName;
  int? price;
  String? productImage;
  String? discount;
  String? weight1;
  String? pkt1;
  String? sellerOption;
  int? qty1;
  dynamic productDescription;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["Id"],
        productName: json["ProductName"],
        price: json["Price"],
        productImage: json["Product_Image"],
        discount: json["Discount"],
        weight1: json["Weight1"],
        pkt1: json["Pkt1"],
        sellerOption: json["SellerOption"],
        qty1: json["Qty1"],
        productDescription: json["ProductDescription"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "ProductName": productName,
        "Price": price,
        "Product_Image": productImage,
        "Discount": discount,
        "Weight1": weight1,
        "Pkt1": pkt1,
        "SellerOption": sellerOption,
        "Qty1": qty1,
        "ProductDescription": productDescription,
      };
}
