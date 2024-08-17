import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:servicemen_listing/features/banners/domain/i_banner_facade.dart';
import 'package:servicemen_listing/features/banners/domain/model/banner_model.dart';

part 'banners_event.dart';
part 'banners_state.dart';
part 'banners_bloc.freezed.dart';

class BannersBloc extends Bloc<BannersEvent, BannersState> {
  final IBannerFacade _bannerFacade;
  BannersBloc(this._bannerFacade) : super(BannersState.initial()) {
    on<_FetchBanners>(_fetchBanners);
  }

  Future<void> _fetchBanners(
      _FetchBanners event, Emitter<BannersState> emit) async {
    emit(state.copyWith(fetchLoading: true));
    final result = await _bannerFacade.fetchAllBanners();
    result.fold(
      (l) => emit(state.copyWith(fetchLoading: false)),
      (r) => emit(state.copyWith(fetchLoading: false, banners: r)),
    );
  }
}
