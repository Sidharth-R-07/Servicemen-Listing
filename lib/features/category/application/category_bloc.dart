import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:servicemen_listing/features/category/domain/i_category_facade.dart';
import 'package:servicemen_listing/features/category/domain/model/category_model.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final ICategoryFacade _iCategoryFacade;
  CategoryBloc(this._iCategoryFacade) : super(CategoryState.initial()) {
    on<_FetchCategories>(_fetchCatgories);
  }

  Future<void> _fetchCatgories(
      _FetchCategories event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(fetchLoading: true));
    final result = await _iCategoryFacade.fetchAllCategories();
    result.fold(
      (l) => emit(state.copyWith(fetchLoading: false)),
      (r) {
        log("Category List: ${r.length}", name: 'CategoryBloc');
        emit(state.copyWith(fetchLoading: false, categoryList: r));
      },
    );
  }
}
