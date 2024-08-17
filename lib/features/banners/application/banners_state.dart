part of 'banners_bloc.dart';

@freezed
class BannersState with _$BannersState {
  factory BannersState({
    required bool fetchLoading,
    required List<BannerModel> banners,
  }) = _BannersState;

  factory BannersState.initial() => BannersState(
        fetchLoading: false,
        banners: [],
      );
}
