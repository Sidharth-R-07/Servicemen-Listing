import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:servicemen_listing/core/utils/constant/api_urls.dart';
import 'package:servicemen_listing/core/utils/failures/failures.dart';
import 'package:servicemen_listing/core/utils/typedef/app_typedef.dart';
import 'package:servicemen_listing/features/category/domain/i_category_facade.dart';
import 'package:servicemen_listing/features/category/domain/model/category_model.dart';

@LazySingleton(as: ICategoryFacade)
class ICategoryImpl implements ICategoryFacade {
  final Dio _dio;

  ICategoryImpl(this._dio);
  @override
  FutureResult<List<CategoryModel>> fetchAllCategories() async {
    try {
      final response = await _dio.get(ApiUrls.fetchCategory);
      final List<CategoryModel> categoryList = [];
      for (var item in response.data) {
        categoryList.add(CategoryModel.fromJson(item));
      }
      return right(categoryList);
    } catch (e) {
      log(e.toString(), name: 'fetchAllCategories');
      return left(MainFailure.serverFailure(errorMsg: e.toString()));
    }
  }
}
