// // To parse this JSON data, do
// //
// //     final orderHistoryModel = orderHistoryModelFromJson(jsonString);
//
// import 'dart:convert';
//
// OrderHistoryModel orderHistoryModelFromJson(String str) =>
//     OrderHistoryModel.fromJson(json.decode(str));
//
// String orderHistoryModelToJson(OrderHistoryModel data) =>
//     json.encode(data.toJson());
//
// class OrderHistoryModel {
//   OrderHistoryModel({
//     this.result,
//     this.message,
//     this.status,
//   });
//
//   List<Result>? result;
//   String? message;
//   int? status;
//
//   factory OrderHistoryModel.fromJson(Map<String, dynamic> json) =>
//       OrderHistoryModel(
//         result:
//             List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
//         message: json["message"],
//         status: json["status"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "result": List<dynamic>.from(result!.map((x) => x.toJson())),
//         "message": message,
//         "status": status,
//       };
// }
//
// class Result {
//   Result({
//     this.id,
//     this.orderId,
//     this.name,
//     this.mobile,
//     this.email,
//     this.totalItem,
//     this.price,
//     this.productName,
//     this.date,
//   });
//
//   int? id;
//   String? orderId;
//   String? name;
//   String? mobile;
//   String? email;
//   int? totalItem;
//   int? price;
//   String? productName;
//   DateTime? date;
//
//   factory Result.fromJson(Map<String, dynamic> json) => Result(
//         id: json["Id"],
//         orderId: json["OrderId"],
//         name: json["Name"],
//         mobile: json["Mobile"],
//         email: json["Email"],
//         totalItem: json["Total_Item"],
//         price: json["Price"],
//         productName: json["ProductName"],
//         date: DateTime.parse(json["Date"]),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "Id": id,
//         "OrderId": orderId,
//         "Name": name,
//         "Mobile": mobile,
//         "Email": email,
//         "Total_Item": totalItem,
//         "Price": price,
//         "ProductName": productName,
//         "Date":
//             "${date?.year.toString().padLeft(4, '0')}-${date?.month.toString().padLeft(2, '0')}-${date?.day.toString().padLeft(2, '0')}",
//       };
// }

// To parse this JSON data, do
//
//     final orderHistoryModel = orderHistoryModelFromJson(jsonString);

import 'dart:convert';

OrderHistoryModel orderHistoryModelFromJson(String str) =>
    OrderHistoryModel.fromJson(json.decode(str));

// String orderHistoryModelToJson(OrderHistoryModel data) =>
//     json.encode(data.toJson());

class OrderHistoryModel {
  OrderHistoryModel({
    this.result,
    this.message,
    this.status,
  });

  List<Result>? result;
  String? message;
  int? status;

  factory OrderHistoryModel.fromJson(Map<String, dynamic> json) =>
      OrderHistoryModel(
        result: json["result"] == null
            ? null
            : List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
        message: json["message"] == null ? null : json["message"],
        status: json["status"] == null ? null : json["status"],
      );

  // Map<String, dynamic> toJson() => {
  //       "result": result == null
  //           ? null
  //           : List<dynamic>.from(result!.map((x) => x.toJson())),
  //       "message": message == null ? null : message,
  //       "status": status == null ? null : status,
  //     };
}

class Result {
  Result({
    this.id,
    this.orderId,
    this.name,
    this.mobile,
    this.email,
    this.totalItem,
    this.price,
    this.productName,
    this.date,
  });

  int? id;
  String? orderId;
  String? name;
  String? mobile;
  String? email;
  int? totalItem;
  double? price;
  String? productName;
  String? date;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["Id"] == null ? null : json["Id"],
        orderId: json["OrderId"] == null ? null : json["OrderId"],
        name: json["Name"] == null ? null : json["Name"],
        mobile: json["Mobile"] == null ? null : json["Mobile"],
        email: json["Email"] == null ? null : json["Email"],
        totalItem: json["Total_Item"] == null ? null : json["Total_Item"],
        price: json["Price"] == null ? null : json["Price"],
        productName: json["ProductName"] == null ? null : json["ProductName"],
        date: json["Date"] == null ? null : json["Date"],
      );

  // Map<String, dynamic> toJson() => {
  //       "Id": id == null ? null : id,
  //       "OrderId": orderId == null ? null : orderId,
  //       "Name": name == null ? null : name,
  //       "Mobile": mobile == null ? null : mobile,
  //       "Email": email == null ? null : email,
  //       "Total_Item": totalItem == null ? null : totalItem,
  //       "Price": price == null ? null : price,
  //       "ProductName": productName == null ? null : productName,
  //       "Date": date == null
  //           ? null
  //           : "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
  //     };
}
