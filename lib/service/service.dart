import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mixin_service/constants/app.dart';
import 'package:mixin_service/model/model.dart';

mixin Service {
  final service = Dio(BaseOptions(baseUrl: AppConstants.BASE_URL));

  Future<List<Model>> getModel() async {
    final response = await service.get('/products');

    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is List) {
        return data.map((e) => Model.fromJson(e)).toList();
      }
    }
    return [];
  }
}
