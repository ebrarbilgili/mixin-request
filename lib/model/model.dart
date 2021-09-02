import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class Model {
  int? id;
  List<String?>? images;
  String? title;
  String? description;
  int? current_price;
  int? previous_price;
  String? currency;
  int? total_reviews;
  double? stars;
  String? category;
  bool? out_of_stock;
  String? sold_by;
  String? shipped_by;
  String? brand;

  Model({
    this.id,
    this.images,
    this.title,
    this.description,
    this.current_price,
    this.previous_price,
    this.currency,
    this.total_reviews,
    this.stars,
    this.category,
    this.out_of_stock,
    this.sold_by,
    this.shipped_by,
    this.brand,
  });

  factory Model.fromJson(Map<String, dynamic> json) {
    return _$ModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ModelToJson(this);
  }
}
