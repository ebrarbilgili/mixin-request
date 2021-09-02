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
    current_price: json['current_price'] as int?,
    previous_price: json['previous_price'] as int?,
    currency: json['currency'] as String?,
    total_reviews: json['total_reviews'] as int?,
    stars: (json['stars'] as num?)?.toDouble(),
    category: json['category'] as String?,
    out_of_stock: json['out_of_stock'] as bool?,
    sold_by: json['sold_by'] as String?,
    shipped_by: json['shipped_by'] as String?,
    brand: json['brand'] as String?,
  );
}

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'title': instance.title,
      'description': instance.description,
      'current_price': instance.current_price,
      'previous_price': instance.previous_price,
      'currency': instance.currency,
      'total_reviews': instance.total_reviews,
      'stars': instance.stars,
      'category': instance.category,
      'out_of_stock': instance.out_of_stock,
      'sold_by': instance.sold_by,
      'shipped_by': instance.shipped_by,
      'brand': instance.brand,
    };
