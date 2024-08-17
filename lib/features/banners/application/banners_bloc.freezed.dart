// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banners_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BannersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBanners,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBanners value) fetchBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBanners value)? fetchBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBanners value)? fetchBanners,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannersEventCopyWith<$Res> {
  factory $BannersEventCopyWith(
          BannersEvent value, $Res Function(BannersEvent) then) =
      _$BannersEventCopyWithImpl<$Res, BannersEvent>;
}

/// @nodoc
class _$BannersEventCopyWithImpl<$Res, $Val extends BannersEvent>
    implements $BannersEventCopyWith<$Res> {
  _$BannersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchBannersImplCopyWith<$Res> {
  factory _$$FetchBannersImplCopyWith(
          _$FetchBannersImpl value, $Res Function(_$FetchBannersImpl) then) =
      __$$FetchBannersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchBannersImplCopyWithImpl<$Res>
    extends _$BannersEventCopyWithImpl<$Res, _$FetchBannersImpl>
    implements _$$FetchBannersImplCopyWith<$Res> {
  __$$FetchBannersImplCopyWithImpl(
      _$FetchBannersImpl _value, $Res Function(_$FetchBannersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchBannersImpl implements _FetchBanners {
  const _$FetchBannersImpl();

  @override
  String toString() {
    return 'BannersEvent.fetchBanners()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchBannersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBanners,
  }) {
    return fetchBanners();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBanners,
  }) {
    return fetchBanners?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBanners,
    required TResult orElse(),
  }) {
    if (fetchBanners != null) {
      return fetchBanners();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBanners value) fetchBanners,
  }) {
    return fetchBanners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBanners value)? fetchBanners,
  }) {
    return fetchBanners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBanners value)? fetchBanners,
    required TResult orElse(),
  }) {
    if (fetchBanners != null) {
      return fetchBanners(this);
    }
    return orElse();
  }
}

abstract class _FetchBanners implements BannersEvent {
  const factory _FetchBanners() = _$FetchBannersImpl;
}

/// @nodoc
mixin _$BannersState {
  bool get fetchLoading => throw _privateConstructorUsedError;
  List<BannerModel> get banners => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BannersStateCopyWith<BannersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannersStateCopyWith<$Res> {
  factory $BannersStateCopyWith(
          BannersState value, $Res Function(BannersState) then) =
      _$BannersStateCopyWithImpl<$Res, BannersState>;
  @useResult
  $Res call({bool fetchLoading, List<BannerModel> banners});
}

/// @nodoc
class _$BannersStateCopyWithImpl<$Res, $Val extends BannersState>
    implements $BannersStateCopyWith<$Res> {
  _$BannersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchLoading = null,
    Object? banners = null,
  }) {
    return _then(_value.copyWith(
      fetchLoading: null == fetchLoading
          ? _value.fetchLoading
          : fetchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      banners: null == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannersStateImplCopyWith<$Res>
    implements $BannersStateCopyWith<$Res> {
  factory _$$BannersStateImplCopyWith(
          _$BannersStateImpl value, $Res Function(_$BannersStateImpl) then) =
      __$$BannersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool fetchLoading, List<BannerModel> banners});
}

/// @nodoc
class __$$BannersStateImplCopyWithImpl<$Res>
    extends _$BannersStateCopyWithImpl<$Res, _$BannersStateImpl>
    implements _$$BannersStateImplCopyWith<$Res> {
  __$$BannersStateImplCopyWithImpl(
      _$BannersStateImpl _value, $Res Function(_$BannersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchLoading = null,
    Object? banners = null,
  }) {
    return _then(_$BannersStateImpl(
      fetchLoading: null == fetchLoading
          ? _value.fetchLoading
          : fetchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
    ));
  }
}

/// @nodoc

class _$BannersStateImpl implements _BannersState {
  _$BannersStateImpl(
      {required this.fetchLoading, required final List<BannerModel> banners})
      : _banners = banners;

  @override
  final bool fetchLoading;
  final List<BannerModel> _banners;
  @override
  List<BannerModel> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  @override
  String toString() {
    return 'BannersState(fetchLoading: $fetchLoading, banners: $banners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannersStateImpl &&
            (identical(other.fetchLoading, fetchLoading) ||
                other.fetchLoading == fetchLoading) &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fetchLoading, const DeepCollectionEquality().hash(_banners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannersStateImplCopyWith<_$BannersStateImpl> get copyWith =>
      __$$BannersStateImplCopyWithImpl<_$BannersStateImpl>(this, _$identity);
}

abstract class _BannersState implements BannersState {
  factory _BannersState(
      {required final bool fetchLoading,
      required final List<BannerModel> banners}) = _$BannersStateImpl;

  @override
  bool get fetchLoading;
  @override
  List<BannerModel> get banners;
  @override
  @JsonKey(ignore: true)
  _$$BannersStateImplCopyWith<_$BannersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
