part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  //FETCH ALL CATEGORY
  const factory CategoryEvent.fetchCategories() = _FetchCategories;

  //CHANGE CATEGORY TAB INDEX
  const factory CategoryEvent.changeTabIndex(int index) = _ChangeTabIndex;
}
