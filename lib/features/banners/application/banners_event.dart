part of 'banners_bloc.dart';

@freezed
class BannersEvent with _$BannersEvent {
  const factory BannersEvent.fetchBanners() = _FetchBanners;
}
