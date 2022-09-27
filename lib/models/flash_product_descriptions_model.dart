// To parse this JSON data, do
//
//     final flashSaleProductDetailsModel = flashSaleProductDetailsModelFromJson(jsonString);

import 'dart:convert';

FlashSaleProductDetailsModel flashSaleProductDetailsModelFromJson(String str) =>
    FlashSaleProductDetailsModel.fromJson(json.decode(str));

String flashSaleProductDetailsModelToJson(FlashSaleProductDetailsModel data) =>
    json.encode(data.toJson());

class FlashSaleProductDetailsModel {
  FlashSaleProductDetailsModel({
    this.result,
    this.status,
    this.message,
  });

  List<Result>? result;
  int? status;
  String? message;

  factory FlashSaleProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      FlashSaleProductDetailsModel(
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
    this.discount,
    this.productImage,
    this.productDescription,
    this.multipleImage,
    this.qty1,
    this.weight1,
    this.pkt1,
  });

  int? id;
  String? productName;
  int? price;
  String? discount;
  String? productImage;
  String? productDescription;
  List<String>? multipleImage;
  int? qty1;
  String? weight1;
  String? pkt1;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["Id"],
        productName: json["ProductName"],
        price: json["Price"],
        discount: json["Discount"],
        productImage: json["Product_Image"],
        productDescription: json["ProductDescription"],
        multipleImage: List<String>.from(json["multipleImage"].map((x) => x)),
        qty1: json["Qty1"],
        weight1: json["Weight1"],
        pkt1: json["Pkt1"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "ProductName": productName,
        "Price": price,
        "Discount": discount,
        "Product_Image": productImage,
        "ProductDescription": productDescription,
        "multipleImage": List<dynamic>.from(multipleImage!.map((x) => x)),
        "Qty1": qty1,
        "Weight1": weight1,
        "Pkt1": pkt1,
      };
}

///.........old model......
// import 'dart:convert';
//
// FlashSaleProductDetailsModel flashSaleProductDetailsModelFromJson(String str) =>
//     FlashSaleProductDetailsModel.fromJson(json.decode(str));
//
// String flashSaleProductDetailsModelToJson(FlashSaleProductDetailsModel data) =>
//     json.encode(data.toJson());
//
// class FlashSaleProductDetailsModel {
//   FlashSaleProductDetailsModel({
//     this.result,
//     this.status,
//     this.message,
//   });
//
//   List<Result>? result;
//   int? status;
//   String? message;
//
//   factory FlashSaleProductDetailsModel.fromJson(Map<String, dynamic> json) =>
//       FlashSaleProductDetailsModel(
//         result:
//             List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
//         status: json["status"],
//         message: json["message"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "result": List<dynamic>.from(result!.map((x) => x.toJson())),
//         "status": status,
//         "message": message,
//       };
// }
//
// class Result {
//   Result({
//     this.id,
//     this.productName,
//     this.price,
//     this.productImage,
//     this.discount,
//     this.weight1,
//     this.pkt1,
//     this.sellerOption,
//     this.qty1,
//     this.productDescription,
//   });
//
//   int? id;
//   String? productName;
//   int? price;
//   String? productImage;
//   String? discount;
//   String? weight1;
//   String? pkt1;
//   dynamic sellerOption;
//   int? qty1;
//   String? productDescription;
//
//   factory Result.fromJson(Map<String, dynamic> json) => Result(
//         id: json["Id"],
//         productName: json["ProductName"],
//         price: json["Price"],
//         productImage: json["Product_Image"],
//         discount: json["Discount"],
//         weight1: json["Weight1"],
//         pkt1: json["Pkt1"],
//         sellerOption: json["SellerOption"],
//         qty1: json["Qty1"],
//         productDescription: json["ProductDescription"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "Id": id,
//         "ProductName": productName,
//         "Price": price,
//         "Product_Image": productImage,
//         "Discount": discount,
//         "Weight1": weight1,
//         "Pkt1": pkt1,
//         "SellerOption": sellerOption,
//         "Qty1": qty1,
//         "ProductDescription": productDescription,
//       };
// }
