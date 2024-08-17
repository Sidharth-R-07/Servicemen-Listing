import 'package:servicemen_listing/core/utils/typedef/app_typedef.dart';
import 'package:servicemen_listing/features/banners/domain/model/banner_model.dart';

abstract class IBannerFacade {
  //FETCH ALL BANNNERS
  FutureResult<List<BannerModel>> fetchAllBanners() {
    throw UnimplementedError('fetchAllBanners() is not implemented');
  }
}
