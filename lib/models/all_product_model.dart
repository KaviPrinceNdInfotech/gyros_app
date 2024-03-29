// To parse this JSON data, do
//
//     final allProductModel = allProductModelFromJson(jsonString);

// import 'dart:convert';
//
// AllProductModel allProductModelFromJson(String str) =>
//     AllProductModel.fromJson(json.decode(str));
//
// String allProductModelToJson(AllProductModel data) =>
//     json.encode(data.toJson());
//
// class AllProductModel {
//   AllProductModel({
//     this.result,
//     this.status,
//     this.message,
//   });
//
//   List<Result>? result;
//   int? status;
//   String? message;
//
//   factory AllProductModel.fromJson(Map<String, dynamic> json) =>
//       AllProductModel(
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
//     this.productImage,
//     this.price,
//     this.quentity,
//     this.productDescription,
//   });
//
//   int? id;
//   String? productName;
//   String? productImage;
//   int? price;
//   dynamic? quentity;
//   String? productDescription;
//
//   factory Result.fromJson(Map<String, dynamic> json) => Result(
//         id: json["id"],
//         productName: json["ProductName"],
//         productImage: json["Product_Image"],
//         price: json["Price"],
//         quentity: json["Quentity"],
//         productDescription: json["ProductDescription"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "ProductName": productName,
//         "Product_Image": productImage,
//         "Price": price,
//         "Quentity": quentity,
//         "ProductDescription": productDescription,
//       };
// }

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
        result: json["result"] == null
            ? null
            : List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
        status: json["status"] == null ? null : json["status"],
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "result": result == null
            ? null
            : List<dynamic>.from(result!.map((x) => x.toJson())),
        "status": status == null ? null : status,
        "message": message == null ? null : message,
      };
}

class Result {
  Result({
    this.id,
    this.productName,
    this.productImage,
    this.price,
    this.discountPercentage,
    this.finalPrice,
    this.quentity,
    this.productDescription,
  });

  int? id;
  String? productName;
  String? productImage;
  int? price;
  int? discountPercentage;
  int? finalPrice;
  dynamic? quentity;
  String? productDescription;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"] == null ? null : json["id"],
        productName: json["ProductName"] == null ? null : json["ProductName"],
        productImage:
            json["Product_Image"] == null ? null : json["Product_Image"],
        price: json["Price"] == null ? null : json["Price"],
        discountPercentage: json["DiscountPercentage"] == null
            ? null
            : json["DiscountPercentage"],
        finalPrice: json["FinalPrice"] == null ? null : json["FinalPrice"],
        quentity: json["Quentity"],
        productDescription: json["ProductDescription"] == null
            ? null
            : json["ProductDescription"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "ProductName": productName == null ? null : productName,
        "Product_Image": productImage == null ? null : productImage,
        "Price": price == null ? null : price,
        "DiscountPercentage":
            discountPercentage == null ? null : discountPercentage,
        "FinalPrice": finalPrice == null ? null : finalPrice,
        "Quentity": quentity,
        "ProductDescription":
            productDescription == null ? null : productDescription,
      };
}
