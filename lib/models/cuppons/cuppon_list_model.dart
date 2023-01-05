// To parse this JSON data, do
//
//     final cupponModel = cupponModelFromJson(jsonString);

import 'dart:convert';

CupponModel cupponModelFromJson(String str) =>
    CupponModel.fromJson(json.decode(str));

String cupponModelToJson(CupponModel data) => json.encode(data.toJson());

class CupponModel {
  CupponModel({
    this.result,
    this.status,
    this.message,
  });

  List<Result>? result;
  int? status;
  String? message;

  factory CupponModel.fromJson(Map<String, dynamic> json) => CupponModel(
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
    this.couponCode,
    this.flat,
    this.amount,
    this.name,
    this.minimumAmount,
    this.maximumAmount,
  });

  int? id;
  String? couponCode;
  dynamic? flat;
  String? amount;
  String? name;
  int? minimumAmount;
  int? maximumAmount;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["Id"] == null ? null : json["Id"],
        couponCode: json["CouponCode"] == null ? null : json["CouponCode"],
        flat: json["Flat"],
        amount: json["Amount"] == null ? null : json["Amount"],
        name: json["Name"] == null ? null : json["Name"],
        minimumAmount:
            json["MinimumAmount"] == null ? null : json["MinimumAmount"],
        maximumAmount:
            json["MaximumAmount"] == null ? null : json["MaximumAmount"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id == null ? null : id,
        "CouponCode": couponCode == null ? null : couponCode,
        "Flat": flat,
        "Amount": amount == null ? null : amount,
        "Name": name == null ? null : name,
        "MinimumAmount": minimumAmount == null ? null : minimumAmount,
        "MaximumAmount": maximumAmount == null ? null : maximumAmount,
      };
}

///
///
// import 'dart:convert';
//
// CupponModel cupponModelFromJson(String str) =>
//     CupponModel.fromJson(json.decode(str));
//
// String cupponModelToJson(CupponModel data) => json.encode(data.toJson());
//
// class CupponModel {
//   CupponModel({
//     this.result,
//     this.status,
//     this.message,
//   });
//
//   List<Result>? result;
//   int? status;
//   String? message;
//
//   factory CupponModel.fromJson(Map<String, dynamic> json) => CupponModel(
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
//     this.couponCode,
//     this.flat,
//     this.amount,
//     this.name,
//     this.minimumAmount,
//     this.maximumAmount,
//   });
//
//   int? id;
//   String? couponCode;
//   dynamic? flat;
//   String? amount;
//   String? name;
//   int? minimumAmount;
//   int? maximumAmount;
//
//   factory Result.fromJson(Map<String, dynamic> json) => Result(
//         id: json["Id"],
//         couponCode: json["CouponCode"],
//         flat: json["Flat"],
//         amount: json["Amount"],
//         name: json["Name"],
//         minimumAmount: json["MinimumAmount"],
//         maximumAmount: json["MaximumAmount"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "Id": id,
//         "CouponCode": couponCode,
//         "Flat": flat,
//         "Amount": amount,
//         "Name": name,
//         "MinimumAmount": minimumAmount,
//         "MaximumAmount": maximumAmount,
//       };
// }
