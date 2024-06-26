import 'dart:convert';

CategoryModel categoryModelFromJson(String str) => CategoryModel.fromJson(json.decode(str));

String categoryModelToJson(CategoryModel data) => json.encode(data.toJson());

class CategoryModel {
  String? categoryId;
  String? categoryImg;
  String? categoryName;
  String? createdAt;
  String? sellerId;
  String? updatedAt;

  // String? sellerId;


  CategoryModel({
    this.categoryId,
    this.categoryImg,
    this.categoryName,
    this.createdAt,
    this.updatedAt,
    this.sellerId,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    categoryId: json["categoryId"],
    sellerId: json["sellerId"],
    categoryImg: json["categoryImg"],
    categoryName: json["categoryName"],
    createdAt: json["createdAt"],
    updatedAt: json["updatedAt"],

    // sellerId: json["sellerId"],

  );

  Map<String, dynamic> toJson() => {
    "categoryId": categoryId,
    "sellerId": sellerId,
    "categoryImg": categoryImg,
    "categoryName": categoryName,
    "createdAt": createdAt,
    "updatedAt": updatedAt,

    // "sellerId": sellerId,

  };
}
