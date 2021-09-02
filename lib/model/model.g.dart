// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model _$ModelFromJson(Map<String, dynamic> json) {
  return Model(
    id: json['id'] as int?,
    images:
        (json['images'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    title: json['title'] as String?,
    description: json['description'] as String?,
    currentPrice: json['currentPrice'] as int?,
    previousPrice: json['previousPrice'] as int?,
    currency: json['currency'] as String?,
    totalReviews: json['totalReviews'] as int?,
    stars: (json['stars'] as num?)?.toDouble(),
    category: json['category'] as String?,
    outOfStock: json['outOfStock'] as bool?,
    soldBy: json['soldBy'] as String?,
    shippedBy: json['shippedBy'] as String?,
    brand: json['brand'] as String?,
  );
}

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'title': instance.title,
      'description': instance.description,
      'currentPrice': instance.currentPrice,
      'previousPrice': instance.previousPrice,
      'currency': instance.currency,
      'totalReviews': instance.totalReviews,
      'stars': instance.stars,
      'category': instance.category,
      'outOfStock': instance.outOfStock,
      'soldBy': instance.soldBy,
      'shippedBy': instance.shippedBy,
      'brand': instance.brand,
    };
