class category {
  List<Result>? result;
  int? status;
  String? message;

  category({this.result, this.status, this.message});

  category.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(new Result.fromJson(v));
      });
    }
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class Result {
  int? id;
  String? categoryName;
  String? imageName;

  Result({this.id, this.categoryName, this.imageName});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryName = json['CategoryName'];
    imageName = json['ImageName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['CategoryName'] = this.categoryName;
    data['ImageName'] = this.imageName;
    return data;
  }
}
