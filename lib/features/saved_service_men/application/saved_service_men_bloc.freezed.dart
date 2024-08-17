// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_service_men_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SavedServiceMenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServicePeople servicePeople)
        addToSavedLoacalStorage,
    required TResult Function(ServicePeople servicePeople)
        removeFromSavedLoacalStorage,
    required TResult Function() fetchAllSavedServiceMen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ServicePeople servicePeople)? addToSavedLoacalStorage,
    TResult? Function(ServicePeople servicePeople)?
        removeFromSavedLoacalStorage,
    TResult? Function()? fetchAllSavedServiceMen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServicePeople servicePeople)? addToSavedLoacalStorage,
    TResult Function(ServicePeople servicePeople)? removeFromSavedLoacalStorage,
    TResult Function()? fetchAllSavedServiceMen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToSavedLoacalStorage value)
        addToSavedLoacalStorage,
    required TResult Function(_RemoveFromSavedLoacalStorage value)
        removeFromSavedLoacalStorage,
    required TResult Function(_FetchAllSavedServiceMen value)
        fetchAllSavedServiceMen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToSavedLoacalStorage value)? addToSavedLoacalStorage,
    TResult? Function(_RemoveFromSavedLoacalStorage value)?
        removeFromSavedLoacalStorage,
    TResult? Function(_FetchAllSavedServiceMen value)? fetchAllSavedServiceMen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToSavedLoacalStorage value)? addToSavedLoacalStorage,
    TResult Function(_RemoveFromSavedLoacalStorage value)?
        removeFromSavedLoacalStorage,
    TResult Function(_FetchAllSavedServiceMen value)? fetchAllSavedServiceMen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedServiceMenEventCopyWith<$Res> {
  factory $SavedServiceMenEventCopyWith(SavedServiceMenEvent value,
          $Res Function(SavedServiceMenEvent) then) =
      _$SavedServiceMenEventCopyWithImpl<$Res, SavedServiceMenEvent>;
}

/// @nodoc
class _$SavedServiceMenEventCopyWithImpl<$Res,
        $Val extends SavedServiceMenEvent>
    implements $SavedServiceMenEventCopyWith<$Res> {
  _$SavedServiceMenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddToSavedLoacalStorageImplCopyWith<$Res> {
  factory _$$AddToSavedLoacalStorageImplCopyWith(
          _$AddToSavedLoacalStorageImpl value,
          $Res Function(_$AddToSavedLoacalStorageImpl) then) =
      __$$AddToSavedLoacalStorageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ServicePeople servicePeople});
}

/// @nodoc
class __$$AddToSavedLoacalStorageImplCopyWithImpl<$Res>
    extends _$SavedServiceMenEventCopyWithImpl<$Res,
        _$AddToSavedLoacalStorageImpl>
    implements _$$AddToSavedLoacalStorageImplCopyWith<$Res> {
  __$$AddToSavedLoacalStorageImplCopyWithImpl(
      _$AddToSavedLoacalStorageImpl _value,
      $Res Function(_$AddToSavedLoacalStorageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servicePeople = null,
  }) {
    return _then(_$AddToSavedLoacalStorageImpl(
      servicePeople: null == servicePeople
          ? _value.servicePeople
          : servicePeople // ignore: cast_nullable_to_non_nullable
              as ServicePeople,
    ));
  }
}

/// @nodoc

class _$AddToSavedLoacalStorageImpl implements _AddToSavedLoacalStorage {
  const _$AddToSavedLoacalStorageImpl({required this.servicePeople});

  @override
  final ServicePeople servicePeople;

  @override
  String toString() {
    return 'SavedServiceMenEvent.addToSavedLoacalStorage(servicePeople: $servicePeople)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToSavedLoacalStorageImpl &&
            (identical(other.servicePeople, servicePeople) ||
                other.servicePeople == servicePeople));
  }

  @override
  int get hashCode => Object.hash(runtimeType, servicePeople);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToSavedLoacalStorageImplCopyWith<_$AddToSavedLoacalStorageImpl>
      get copyWith => __$$AddToSavedLoacalStorageImplCopyWithImpl<
          _$AddToSavedLoacalStorageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServicePeople servicePeople)
        addToSavedLoacalStorage,
    required TResult Function(ServicePeople servicePeople)
        removeFromSavedLoacalStorage,
    required TResult Function() fetchAllSavedServiceMen,
  }) {
    return addToSavedLoacalStorage(servicePeople);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ServicePeople servicePeople)? addToSavedLoacalStorage,
    TResult? Function(ServicePeople servicePeople)?
        removeFromSavedLoacalStorage,
    TResult? Function()? fetchAllSavedServiceMen,
  }) {
    return addToSavedLoacalStorage?.call(servicePeople);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServicePeople servicePeople)? addToSavedLoacalStorage,
    TResult Function(ServicePeople servicePeople)? removeFromSavedLoacalStorage,
    TResult Function()? fetchAllSavedServiceMen,
    required TResult orElse(),
  }) {
    if (addToSavedLoacalStorage != null) {
      return addToSavedLoacalStorage(servicePeople);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToSavedLoacalStorage value)
        addToSavedLoacalStorage,
    required TResult Function(_RemoveFromSavedLoacalStorage value)
        removeFromSavedLoacalStorage,
    required TResult Function(_FetchAllSavedServiceMen value)
        fetchAllSavedServiceMen,
  }) {
    return addToSavedLoacalStorage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToSavedLoacalStorage value)? addToSavedLoacalStorage,
    TResult? Function(_RemoveFromSavedLoacalStorage value)?
        removeFromSavedLoacalStorage,
    TResult? Function(_FetchAllSavedServiceMen value)? fetchAllSavedServiceMen,
  }) {
    return addToSavedLoacalStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToSavedLoacalStorage value)? addToSavedLoacalStorage,
    TResult Function(_RemoveFromSavedLoacalStorage value)?
        removeFromSavedLoacalStorage,
    TResult Function(_FetchAllSavedServiceMen value)? fetchAllSavedServiceMen,
    required TResult orElse(),
  }) {
    if (addToSavedLoacalStorage != null) {
      return addToSavedLoacalStorage(this);
    }
    return orElse();
  }
}

abstract class _AddToSavedLoacalStorage implements SavedServiceMenEvent {
  const factory _AddToSavedLoacalStorage(
          {required final ServicePeople servicePeople}) =
      _$AddToSavedLoacalStorageImpl;

  ServicePeople get servicePeople;
  @JsonKey(ignore: true)
  _$$AddToSavedLoacalStorageImplCopyWith<_$AddToSavedLoacalStorageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromSavedLoacalStorageImplCopyWith<$Res> {
  factory _$$RemoveFromSavedLoacalStorageImplCopyWith(
          _$RemoveFromSavedLoacalStorageImpl value,
          $Res Function(_$RemoveFromSavedLoacalStorageImpl) then) =
      __$$RemoveFromSavedLoacalStorageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ServicePeople servicePeople});
}

/// @nodoc
class __$$RemoveFromSavedLoacalStorageImplCopyWithImpl<$Res>
    extends _$SavedServiceMenEventCopyWithImpl<$Res,
        _$RemoveFromSavedLoacalStorageImpl>
    implements _$$RemoveFromSavedLoacalStorageImplCopyWith<$Res> {
  __$$RemoveFromSavedLoacalStorageImplCopyWithImpl(
      _$RemoveFromSavedLoacalStorageImpl _value,
      $Res Function(_$RemoveFromSavedLoacalStorageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servicePeople = null,
  }) {
    return _then(_$RemoveFromSavedLoacalStorageImpl(
      servicePeople: null == servicePeople
          ? _value.servicePeople
          : servicePeople // ignore: cast_nullable_to_non_nullable
              as ServicePeople,
    ));
  }
}

/// @nodoc

class _$RemoveFromSavedLoacalStorageImpl
    implements _RemoveFromSavedLoacalStorage {
  const _$RemoveFromSavedLoacalStorageImpl({required this.servicePeople});

  @override
  final ServicePeople servicePeople;

  @override
  String toString() {
    return 'SavedServiceMenEvent.removeFromSavedLoacalStorage(servicePeople: $servicePeople)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromSavedLoacalStorageImpl &&
            (identical(other.servicePeople, servicePeople) ||
                other.servicePeople == servicePeople));
  }

  @override
  int get hashCode => Object.hash(runtimeType, servicePeople);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromSavedLoacalStorageImplCopyWith<
          _$RemoveFromSavedLoacalStorageImpl>
      get copyWith => __$$RemoveFromSavedLoacalStorageImplCopyWithImpl<
          _$RemoveFromSavedLoacalStorageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServicePeople servicePeople)
        addToSavedLoacalStorage,
    required TResult Function(ServicePeople servicePeople)
        removeFromSavedLoacalStorage,
    required TResult Function() fetchAllSavedServiceMen,
  }) {
    return removeFromSavedLoacalStorage(servicePeople);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ServicePeople servicePeople)? addToSavedLoacalStorage,
    TResult? Function(ServicePeople servicePeople)?
        removeFromSavedLoacalStorage,
    TResult? Function()? fetchAllSavedServiceMen,
  }) {
    return removeFromSavedLoacalStorage?.call(servicePeople);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServicePeople servicePeople)? addToSavedLoacalStorage,
    TResult Function(ServicePeople servicePeople)? removeFromSavedLoacalStorage,
    TResult Function()? fetchAllSavedServiceMen,
    required TResult orElse(),
  }) {
    if (removeFromSavedLoacalStorage != null) {
      return removeFromSavedLoacalStorage(servicePeople);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToSavedLoacalStorage value)
        addToSavedLoacalStorage,
    required TResult Function(_RemoveFromSavedLoacalStorage value)
        removeFromSavedLoacalStorage,
    required TResult Function(_FetchAllSavedServiceMen value)
        fetchAllSavedServiceMen,
  }) {
    return removeFromSavedLoacalStorage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToSavedLoacalStorage value)? addToSavedLoacalStorage,
    TResult? Function(_RemoveFromSavedLoacalStorage value)?
        removeFromSavedLoacalStorage,
    TResult? Function(_FetchAllSavedServiceMen value)? fetchAllSavedServiceMen,
  }) {
    return removeFromSavedLoacalStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToSavedLoacalStorage value)? addToSavedLoacalStorage,
    TResult Function(_RemoveFromSavedLoacalStorage value)?
        removeFromSavedLoacalStorage,
    TResult Function(_FetchAllSavedServiceMen value)? fetchAllSavedServiceMen,
    required TResult orElse(),
  }) {
    if (removeFromSavedLoacalStorage != null) {
      return removeFromSavedLoacalStorage(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromSavedLoacalStorage implements SavedServiceMenEvent {
  const factory _RemoveFromSavedLoacalStorage(
          {required final ServicePeople servicePeople}) =
      _$RemoveFromSavedLoacalStorageImpl;

  ServicePeople get servicePeople;
  @JsonKey(ignore: true)
  _$$RemoveFromSavedLoacalStorageImplCopyWith<
          _$RemoveFromSavedLoacalStorageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllSavedServiceMenImplCopyWith<$Res> {
  factory _$$FetchAllSavedServiceMenImplCopyWith(
          _$FetchAllSavedServiceMenImpl value,
          $Res Function(_$FetchAllSavedServiceMenImpl) then) =
      __$$FetchAllSavedServiceMenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllSavedServiceMenImplCopyWithImpl<$Res>
    extends _$SavedServiceMenEventCopyWithImpl<$Res,
        _$FetchAllSavedServiceMenImpl>
    implements _$$FetchAllSavedServiceMenImplCopyWith<$Res> {
  __$$FetchAllSavedServiceMenImplCopyWithImpl(
      _$FetchAllSavedServiceMenImpl _value,
      $Res Function(_$FetchAllSavedServiceMenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAllSavedServiceMenImpl implements _FetchAllSavedServiceMen {
  const _$FetchAllSavedServiceMenImpl();

  @override
  String toString() {
    return 'SavedServiceMenEvent.fetchAllSavedServiceMen()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllSavedServiceMenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServicePeople servicePeople)
        addToSavedLoacalStorage,
    required TResult Function(ServicePeople servicePeople)
        removeFromSavedLoacalStorage,
    required TResult Function() fetchAllSavedServiceMen,
  }) {
    return fetchAllSavedServiceMen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ServicePeople servicePeople)? addToSavedLoacalStorage,
    TResult? Function(ServicePeople servicePeople)?
        removeFromSavedLoacalStorage,
    TResult? Function()? fetchAllSavedServiceMen,
  }) {
    return fetchAllSavedServiceMen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServicePeople servicePeople)? addToSavedLoacalStorage,
    TResult Function(ServicePeople servicePeople)? removeFromSavedLoacalStorage,
    TResult Function()? fetchAllSavedServiceMen,
    required TResult orElse(),
  }) {
    if (fetchAllSavedServiceMen != null) {
      return fetchAllSavedServiceMen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToSavedLoacalStorage value)
        addToSavedLoacalStorage,
    required TResult Function(_RemoveFromSavedLoacalStorage value)
        removeFromSavedLoacalStorage,
    required TResult Function(_FetchAllSavedServiceMen value)
        fetchAllSavedServiceMen,
  }) {
    return fetchAllSavedServiceMen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToSavedLoacalStorage value)? addToSavedLoacalStorage,
    TResult? Function(_RemoveFromSavedLoacalStorage value)?
        removeFromSavedLoacalStorage,
    TResult? Function(_FetchAllSavedServiceMen value)? fetchAllSavedServiceMen,
  }) {
    return fetchAllSavedServiceMen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToSavedLoacalStorage value)? addToSavedLoacalStorage,
    TResult Function(_RemoveFromSavedLoacalStorage value)?
        removeFromSavedLoacalStorage,
    TResult Function(_FetchAllSavedServiceMen value)? fetchAllSavedServiceMen,
    required TResult orElse(),
  }) {
    if (fetchAllSavedServiceMen != null) {
      return fetchAllSavedServiceMen(this);
    }
    return orElse();
  }
}

abstract class _FetchAllSavedServiceMen implements SavedServiceMenEvent {
  const factory _FetchAllSavedServiceMen() = _$FetchAllSavedServiceMenImpl;
}

/// @nodoc
mixin _$SavedServiceMenState {
  List<ServicePeople> get savedServiceMenList =>
      throw _privateConstructorUsedError;
  bool get fetchLaoding => throw _privateConstructorUsedError;
  bool get addLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavedServiceMenStateCopyWith<SavedServiceMenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedServiceMenStateCopyWith<$Res> {
  factory $SavedServiceMenStateCopyWith(SavedServiceMenState value,
          $Res Function(SavedServiceMenState) then) =
      _$SavedServiceMenStateCopyWithImpl<$Res, SavedServiceMenState>;
  @useResult
  $Res call(
      {List<ServicePeople> savedServiceMenList,
      bool fetchLaoding,
      bool addLoading});
}

/// @nodoc
class _$SavedServiceMenStateCopyWithImpl<$Res,
        $Val extends SavedServiceMenState>
    implements $SavedServiceMenStateCopyWith<$Res> {
  _$SavedServiceMenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedServiceMenList = null,
    Object? fetchLaoding = null,
    Object? addLoading = null,
  }) {
    return _then(_value.copyWith(
      savedServiceMenList: null == savedServiceMenList
          ? _value.savedServiceMenList
          : savedServiceMenList // ignore: cast_nullable_to_non_nullable
              as List<ServicePeople>,
      fetchLaoding: null == fetchLaoding
          ? _value.fetchLaoding
          : fetchLaoding // ignore: cast_nullable_to_non_nullable
              as bool,
      addLoading: null == addLoading
          ? _value.addLoading
          : addLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedServiceMenStateImplCopyWith<$Res>
    implements $SavedServiceMenStateCopyWith<$Res> {
  factory _$$SavedServiceMenStateImplCopyWith(_$SavedServiceMenStateImpl value,
          $Res Function(_$SavedServiceMenStateImpl) then) =
      __$$SavedServiceMenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ServicePeople> savedServiceMenList,
      bool fetchLaoding,
      bool addLoading});
}

/// @nodoc
class __$$SavedServiceMenStateImplCopyWithImpl<$Res>
    extends _$SavedServiceMenStateCopyWithImpl<$Res, _$SavedServiceMenStateImpl>
    implements _$$SavedServiceMenStateImplCopyWith<$Res> {
  __$$SavedServiceMenStateImplCopyWithImpl(_$SavedServiceMenStateImpl _value,
      $Res Function(_$SavedServiceMenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedServiceMenList = null,
    Object? fetchLaoding = null,
    Object? addLoading = null,
  }) {
    return _then(_$SavedServiceMenStateImpl(
      savedServiceMenList: null == savedServiceMenList
          ? _value._savedServiceMenList
          : savedServiceMenList // ignore: cast_nullable_to_non_nullable
              as List<ServicePeople>,
      fetchLaoding: null == fetchLaoding
          ? _value.fetchLaoding
          : fetchLaoding // ignore: cast_nullable_to_non_nullable
              as bool,
      addLoading: null == addLoading
          ? _value.addLoading
          : addLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SavedServiceMenStateImpl implements _SavedServiceMenState {
  _$SavedServiceMenStateImpl(
      {required final List<ServicePeople> savedServiceMenList,
      required this.fetchLaoding,
      required this.addLoading})
      : _savedServiceMenList = savedServiceMenList;

  final List<ServicePeople> _savedServiceMenList;
  @override
  List<ServicePeople> get savedServiceMenList {
    if (_savedServiceMenList is EqualUnmodifiableListView)
      return _savedServiceMenList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedServiceMenList);
  }

  @override
  final bool fetchLaoding;
  @override
  final bool addLoading;

  @override
  String toString() {
    return 'SavedServiceMenState(savedServiceMenList: $savedServiceMenList, fetchLaoding: $fetchLaoding, addLoading: $addLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedServiceMenStateImpl &&
            const DeepCollectionEquality()
                .equals(other._savedServiceMenList, _savedServiceMenList) &&
            (identical(other.fetchLaoding, fetchLaoding) ||
                other.fetchLaoding == fetchLaoding) &&
            (identical(other.addLoading, addLoading) ||
                other.addLoading == addLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_savedServiceMenList),
      fetchLaoding,
      addLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedServiceMenStateImplCopyWith<_$SavedServiceMenStateImpl>
      get copyWith =>
          __$$SavedServiceMenStateImplCopyWithImpl<_$SavedServiceMenStateImpl>(
              this, _$identity);
}

abstract class _SavedServiceMenState implements SavedServiceMenState {
  factory _SavedServiceMenState(
      {required final List<ServicePeople> savedServiceMenList,
      required final bool fetchLaoding,
      required final bool addLoading}) = _$SavedServiceMenStateImpl;

  @override
  List<ServicePeople> get savedServiceMenList;
  @override
  bool get fetchLaoding;
  @override
  bool get addLoading;
  @override
  @JsonKey(ignore: true)
  _$$SavedServiceMenStateImplCopyWith<_$SavedServiceMenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
