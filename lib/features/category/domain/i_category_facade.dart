import 'package:servicemen_listing/core/utils/typedef/app_typedef.dart';
import 'package:servicemen_listing/features/category/domain/model/category_model.dart';

abstract class ICategoryFacade {
  //FETCH ALL CATEGORIES
  FutureResult<List<CategoryModel>> fetchAllCategories() {
    throw UnimplementedError('fetchAllCategories() is not implemented');
  }
}
