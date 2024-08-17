import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:servicemen_listing/core/utils/constant/api_urls.dart';
import 'package:servicemen_listing/core/utils/failures/failures.dart';
import 'package:servicemen_listing/core/utils/typedef/app_typedef.dart';
import 'package:servicemen_listing/features/banners/domain/i_banner_facade.dart';
import 'package:servicemen_listing/features/banners/domain/model/banner_model.dart';

@LazySingleton(as: IBannerFacade)
class IBannerImpl implements IBannerFacade {
  final Dio _dio;

  IBannerImpl(this._dio);

  @override
  FutureResult<List<BannerModel>> fetchAllBanners() async {
    try {
      final response = await _dio.get(ApiUrls.fetchBanners);
      final List<BannerModel> banners = (response.data as List)
          .map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList();

      banners.sort((a, b) => a.showingOrder.compareTo(b.showingOrder));
      return right(banners);
    } catch (ex) {
      return left(MainFailure.serverFailure(errorMsg: ex.toString()));
    }
  }
}
