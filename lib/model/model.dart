import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class Model {
  int? id;
  List<String?>? images;
  String? title;
  String? description;
  int? currentPrice;
  int? previousPrice;
  String? currency;
  int? totalReviews;
  double? stars;
  String? category;
  bool? outOfStock;
  String? soldBy;
  String? shippedBy;
  String? brand;

  Model({
    this.id,
    this.images,
    this.title,
    this.description,
    this.currentPrice,
    this.previousPrice,
    this.currency,
    this.totalReviews,
    this.stars,
    this.category,
    this.outOfStock,
    this.soldBy,
    this.shippedBy,
    this.brand,
  });

  factory Model.fromJson(Map<String, dynamic> json) {
    return _$ModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ModelToJson(this);
  }
}
