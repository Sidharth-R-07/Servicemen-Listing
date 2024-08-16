part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState(
      {required List<CategoryModel> categoryList,
      required bool fetchLoading}) = _CategoryState;

  factory CategoryState.initial() => const CategoryState(
        categoryList: [],
        fetchLoading: false,
      );
}
