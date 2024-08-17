// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCategories,
    required TResult Function(int index) changeTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCategories,
    TResult? Function(int index)? changeTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCategories,
    TResult Function(int index)? changeTabIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_ChangeTabIndex value) changeTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_ChangeTabIndex value)? changeTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_ChangeTabIndex value)? changeTabIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchCategoriesImplCopyWith<$Res> {
  factory _$$FetchCategoriesImplCopyWith(_$FetchCategoriesImpl value,
          $Res Function(_$FetchCategoriesImpl) then) =
      __$$FetchCategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCategoriesImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchCategoriesImpl>
    implements _$$FetchCategoriesImplCopyWith<$Res> {
  __$$FetchCategoriesImplCopyWithImpl(
      _$FetchCategoriesImpl _value, $Res Function(_$FetchCategoriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCategoriesImpl implements _FetchCategories {
  const _$FetchCategoriesImpl();

  @override
  String toString() {
    return 'CategoryEvent.fetchCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCategoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCategories,
    required TResult Function(int index) changeTabIndex,
  }) {
    return fetchCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCategories,
    TResult? Function(int index)? changeTabIndex,
  }) {
    return fetchCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCategories,
    TResult Function(int index)? changeTabIndex,
    required TResult orElse(),
  }) {
    if (fetchCategories != null) {
      return fetchCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_ChangeTabIndex value) changeTabIndex,
  }) {
    return fetchCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_ChangeTabIndex value)? changeTabIndex,
  }) {
    return fetchCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_ChangeTabIndex value)? changeTabIndex,
    required TResult orElse(),
  }) {
    if (fetchCategories != null) {
      return fetchCategories(this);
    }
    return orElse();
  }
}

abstract class _FetchCategories implements CategoryEvent {
  const factory _FetchCategories() = _$FetchCategoriesImpl;
}

/// @nodoc
abstract class _$$ChangeTabIndexImplCopyWith<$Res> {
  factory _$$ChangeTabIndexImplCopyWith(_$ChangeTabIndexImpl value,
          $Res Function(_$ChangeTabIndexImpl) then) =
      __$$ChangeTabIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeTabIndexImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$ChangeTabIndexImpl>
    implements _$$ChangeTabIndexImplCopyWith<$Res> {
  __$$ChangeTabIndexImplCopyWithImpl(
      _$ChangeTabIndexImpl _value, $Res Function(_$ChangeTabIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeTabIndexImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeTabIndexImpl implements _ChangeTabIndex {
  const _$ChangeTabIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CategoryEvent.changeTabIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTabIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTabIndexImplCopyWith<_$ChangeTabIndexImpl> get copyWith =>
      __$$ChangeTabIndexImplCopyWithImpl<_$ChangeTabIndexImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCategories,
    required TResult Function(int index) changeTabIndex,
  }) {
    return changeTabIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCategories,
    TResult? Function(int index)? changeTabIndex,
  }) {
    return changeTabIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCategories,
    TResult Function(int index)? changeTabIndex,
    required TResult orElse(),
  }) {
    if (changeTabIndex != null) {
      return changeTabIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_ChangeTabIndex value) changeTabIndex,
  }) {
    return changeTabIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_ChangeTabIndex value)? changeTabIndex,
  }) {
    return changeTabIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_ChangeTabIndex value)? changeTabIndex,
    required TResult orElse(),
  }) {
    if (changeTabIndex != null) {
      return changeTabIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeTabIndex implements CategoryEvent {
  const factory _ChangeTabIndex(final int index) = _$ChangeTabIndexImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeTabIndexImplCopyWith<_$ChangeTabIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  List<CategoryModel> get categoryList => throw _privateConstructorUsedError;
  bool get fetchLoading => throw _privateConstructorUsedError;
  int get currentTabIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call(
      {List<CategoryModel> categoryList,
      bool fetchLoading,
      int currentTabIndex});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? fetchLoading = null,
    Object? currentTabIndex = null,
  }) {
    return _then(_value.copyWith(
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      fetchLoading: null == fetchLoading
          ? _value.fetchLoading
          : fetchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentTabIndex: null == currentTabIndex
          ? _value.currentTabIndex
          : currentTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryStateImplCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$CategoryStateImplCopyWith(
          _$CategoryStateImpl value, $Res Function(_$CategoryStateImpl) then) =
      __$$CategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryModel> categoryList,
      bool fetchLoading,
      int currentTabIndex});
}

/// @nodoc
class __$$CategoryStateImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateImpl>
    implements _$$CategoryStateImplCopyWith<$Res> {
  __$$CategoryStateImplCopyWithImpl(
      _$CategoryStateImpl _value, $Res Function(_$CategoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? fetchLoading = null,
    Object? currentTabIndex = null,
  }) {
    return _then(_$CategoryStateImpl(
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      fetchLoading: null == fetchLoading
          ? _value.fetchLoading
          : fetchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentTabIndex: null == currentTabIndex
          ? _value.currentTabIndex
          : currentTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CategoryStateImpl implements _CategoryState {
  const _$CategoryStateImpl(
      {required final List<CategoryModel> categoryList,
      required this.fetchLoading,
      required this.currentTabIndex})
      : _categoryList = categoryList;

  final List<CategoryModel> _categoryList;
  @override
  List<CategoryModel> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  final bool fetchLoading;
  @override
  final int currentTabIndex;

  @override
  String toString() {
    return 'CategoryState(categoryList: $categoryList, fetchLoading: $fetchLoading, currentTabIndex: $currentTabIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            (identical(other.fetchLoading, fetchLoading) ||
                other.fetchLoading == fetchLoading) &&
            (identical(other.currentTabIndex, currentTabIndex) ||
                other.currentTabIndex == currentTabIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoryList),
      fetchLoading,
      currentTabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      __$$CategoryStateImplCopyWithImpl<_$CategoryStateImpl>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
      {required final List<CategoryModel> categoryList,
      required final bool fetchLoading,
      required final int currentTabIndex}) = _$CategoryStateImpl;

  @override
  List<CategoryModel> get categoryList;
  @override
  bool get fetchLoading;
  @override
  int get currentTabIndex;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
