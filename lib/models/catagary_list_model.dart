// To parse this JSON data, do
//
//     final catagaryListModels = catagaryListModelsFromJson(jsonString);

import 'dart:convert';

List<CatagaryListModels> catagaryListModelsFromJson(String str) =>
    List<CatagaryListModels>.from(
        json.decode(str).map((x) => CatagaryListModels.fromJson(x)));

String catagaryListModelsToJson(List<CatagaryListModels> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CatagaryListModels {
  CatagaryListModels({
    this.id,
    this.categoryName,
    this.imageName,
  });

  int? id;
  String? categoryName;
  String? imageName;

  factory CatagaryListModels.fromJson(Map<String, dynamic> json) =>
      CatagaryListModels(
        id: json["id"],
        categoryName: json["CategoryName"],
        imageName: json["ImageName"] == null ? null : json["ImageName"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "CategoryName": categoryName,
        "ImageName": imageName == null ? null : imageName,
      };
}
