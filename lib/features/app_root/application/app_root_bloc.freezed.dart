// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_root_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppRootEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeCurrentPaget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeCurrentPaget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeCurrentPaget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCurrentPaget value) changeCurrentPaget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCurrentPaget value)? changeCurrentPaget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCurrentPaget value)? changeCurrentPaget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppRootEventCopyWith<AppRootEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppRootEventCopyWith<$Res> {
  factory $AppRootEventCopyWith(
          AppRootEvent value, $Res Function(AppRootEvent) then) =
      _$AppRootEventCopyWithImpl<$Res, AppRootEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$AppRootEventCopyWithImpl<$Res, $Val extends AppRootEvent>
    implements $AppRootEventCopyWith<$Res> {
  _$AppRootEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeCurrentPagetImplCopyWith<$Res>
    implements $AppRootEventCopyWith<$Res> {
  factory _$$ChangeCurrentPagetImplCopyWith(_$ChangeCurrentPagetImpl value,
          $Res Function(_$ChangeCurrentPagetImpl) then) =
      __$$ChangeCurrentPagetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeCurrentPagetImplCopyWithImpl<$Res>
    extends _$AppRootEventCopyWithImpl<$Res, _$ChangeCurrentPagetImpl>
    implements _$$ChangeCurrentPagetImplCopyWith<$Res> {
  __$$ChangeCurrentPagetImplCopyWithImpl(_$ChangeCurrentPagetImpl _value,
      $Res Function(_$ChangeCurrentPagetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeCurrentPagetImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeCurrentPagetImpl implements _ChangeCurrentPaget {
  const _$ChangeCurrentPagetImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'AppRootEvent.changeCurrentPaget(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCurrentPagetImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCurrentPagetImplCopyWith<_$ChangeCurrentPagetImpl> get copyWith =>
      __$$ChangeCurrentPagetImplCopyWithImpl<_$ChangeCurrentPagetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeCurrentPaget,
  }) {
    return changeCurrentPaget(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeCurrentPaget,
  }) {
    return changeCurrentPaget?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeCurrentPaget,
    required TResult orElse(),
  }) {
    if (changeCurrentPaget != null) {
      return changeCurrentPaget(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCurrentPaget value) changeCurrentPaget,
  }) {
    return changeCurrentPaget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCurrentPaget value)? changeCurrentPaget,
  }) {
    return changeCurrentPaget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCurrentPaget value)? changeCurrentPaget,
    required TResult orElse(),
  }) {
    if (changeCurrentPaget != null) {
      return changeCurrentPaget(this);
    }
    return orElse();
  }
}

abstract class _ChangeCurrentPaget implements AppRootEvent {
  const factory _ChangeCurrentPaget(final int index) = _$ChangeCurrentPagetImpl;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$ChangeCurrentPagetImplCopyWith<_$ChangeCurrentPagetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppRootState {
  int get currentPageIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppRootStateCopyWith<AppRootState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppRootStateCopyWith<$Res> {
  factory $AppRootStateCopyWith(
          AppRootState value, $Res Function(AppRootState) then) =
      _$AppRootStateCopyWithImpl<$Res, AppRootState>;
  @useResult
  $Res call({int currentPageIndex});
}

/// @nodoc
class _$AppRootStateCopyWithImpl<$Res, $Val extends AppRootState>
    implements $AppRootStateCopyWith<$Res> {
  _$AppRootStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPageIndex = null,
  }) {
    return _then(_value.copyWith(
      currentPageIndex: null == currentPageIndex
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppRootStateImplCopyWith<$Res>
    implements $AppRootStateCopyWith<$Res> {
  factory _$$AppRootStateImplCopyWith(
          _$AppRootStateImpl value, $Res Function(_$AppRootStateImpl) then) =
      __$$AppRootStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPageIndex});
}

/// @nodoc
class __$$AppRootStateImplCopyWithImpl<$Res>
    extends _$AppRootStateCopyWithImpl<$Res, _$AppRootStateImpl>
    implements _$$AppRootStateImplCopyWith<$Res> {
  __$$AppRootStateImplCopyWithImpl(
      _$AppRootStateImpl _value, $Res Function(_$AppRootStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPageIndex = null,
  }) {
    return _then(_$AppRootStateImpl(
      currentPageIndex: null == currentPageIndex
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AppRootStateImpl implements _AppRootState {
  const _$AppRootStateImpl({required this.currentPageIndex});

  @override
  final int currentPageIndex;

  @override
  String toString() {
    return 'AppRootState(currentPageIndex: $currentPageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppRootStateImpl &&
            (identical(other.currentPageIndex, currentPageIndex) ||
                other.currentPageIndex == currentPageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppRootStateImplCopyWith<_$AppRootStateImpl> get copyWith =>
      __$$AppRootStateImplCopyWithImpl<_$AppRootStateImpl>(this, _$identity);
}

abstract class _AppRootState implements AppRootState {
  const factory _AppRootState({required final int currentPageIndex}) =
      _$AppRootStateImpl;

  @override
  int get currentPageIndex;
  @override
  @JsonKey(ignore: true)
  _$$AppRootStateImplCopyWith<_$AppRootStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
