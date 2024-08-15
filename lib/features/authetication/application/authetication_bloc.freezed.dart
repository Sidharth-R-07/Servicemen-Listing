// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authetication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AutheticationEvent {
  String get phoneNUmber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNUmber) verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNUmber)? verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNUmber)? verifyPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AutheticationEventCopyWith<AutheticationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutheticationEventCopyWith<$Res> {
  factory $AutheticationEventCopyWith(
          AutheticationEvent value, $Res Function(AutheticationEvent) then) =
      _$AutheticationEventCopyWithImpl<$Res, AutheticationEvent>;
  @useResult
  $Res call({String phoneNUmber});
}

/// @nodoc
class _$AutheticationEventCopyWithImpl<$Res, $Val extends AutheticationEvent>
    implements $AutheticationEventCopyWith<$Res> {
  _$AutheticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNUmber = null,
  }) {
    return _then(_value.copyWith(
      phoneNUmber: null == phoneNUmber
          ? _value.phoneNUmber
          : phoneNUmber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyPhoneNumberImplCopyWith<$Res>
    implements $AutheticationEventCopyWith<$Res> {
  factory _$$VerifyPhoneNumberImplCopyWith(_$VerifyPhoneNumberImpl value,
          $Res Function(_$VerifyPhoneNumberImpl) then) =
      __$$VerifyPhoneNumberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNUmber});
}

/// @nodoc
class __$$VerifyPhoneNumberImplCopyWithImpl<$Res>
    extends _$AutheticationEventCopyWithImpl<$Res, _$VerifyPhoneNumberImpl>
    implements _$$VerifyPhoneNumberImplCopyWith<$Res> {
  __$$VerifyPhoneNumberImplCopyWithImpl(_$VerifyPhoneNumberImpl _value,
      $Res Function(_$VerifyPhoneNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNUmber = null,
  }) {
    return _then(_$VerifyPhoneNumberImpl(
      null == phoneNUmber
          ? _value.phoneNUmber
          : phoneNUmber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyPhoneNumberImpl implements _VerifyPhoneNumber {
  const _$VerifyPhoneNumberImpl(this.phoneNUmber);

  @override
  final String phoneNUmber;

  @override
  String toString() {
    return 'AutheticationEvent.verifyPhoneNumber(phoneNUmber: $phoneNUmber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPhoneNumberImpl &&
            (identical(other.phoneNUmber, phoneNUmber) ||
                other.phoneNUmber == phoneNUmber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNUmber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPhoneNumberImplCopyWith<_$VerifyPhoneNumberImpl> get copyWith =>
      __$$VerifyPhoneNumberImplCopyWithImpl<_$VerifyPhoneNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNUmber) verifyPhoneNumber,
  }) {
    return verifyPhoneNumber(phoneNUmber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNUmber)? verifyPhoneNumber,
  }) {
    return verifyPhoneNumber?.call(phoneNUmber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNUmber)? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(phoneNUmber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
  }) {
    return verifyPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
  }) {
    return verifyPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _VerifyPhoneNumber implements AutheticationEvent {
  const factory _VerifyPhoneNumber(final String phoneNUmber) =
      _$VerifyPhoneNumberImpl;

  @override
  String get phoneNUmber;
  @override
  @JsonKey(ignore: true)
  _$$VerifyPhoneNumberImplCopyWith<_$VerifyPhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AutheticationState {
  bool get phoneVerificationLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AutheticationStateCopyWith<AutheticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutheticationStateCopyWith<$Res> {
  factory $AutheticationStateCopyWith(
          AutheticationState value, $Res Function(AutheticationState) then) =
      _$AutheticationStateCopyWithImpl<$Res, AutheticationState>;
  @useResult
  $Res call({bool phoneVerificationLoading});
}

/// @nodoc
class _$AutheticationStateCopyWithImpl<$Res, $Val extends AutheticationState>
    implements $AutheticationStateCopyWith<$Res> {
  _$AutheticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneVerificationLoading = null,
  }) {
    return _then(_value.copyWith(
      phoneVerificationLoading: null == phoneVerificationLoading
          ? _value.phoneVerificationLoading
          : phoneVerificationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutheticationStateImplCopyWith<$Res>
    implements $AutheticationStateCopyWith<$Res> {
  factory _$$AutheticationStateImplCopyWith(_$AutheticationStateImpl value,
          $Res Function(_$AutheticationStateImpl) then) =
      __$$AutheticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool phoneVerificationLoading});
}

/// @nodoc
class __$$AutheticationStateImplCopyWithImpl<$Res>
    extends _$AutheticationStateCopyWithImpl<$Res, _$AutheticationStateImpl>
    implements _$$AutheticationStateImplCopyWith<$Res> {
  __$$AutheticationStateImplCopyWithImpl(_$AutheticationStateImpl _value,
      $Res Function(_$AutheticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneVerificationLoading = null,
  }) {
    return _then(_$AutheticationStateImpl(
      phoneVerificationLoading: null == phoneVerificationLoading
          ? _value.phoneVerificationLoading
          : phoneVerificationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AutheticationStateImpl implements _AutheticationState {
  _$AutheticationStateImpl({required this.phoneVerificationLoading});

  @override
  final bool phoneVerificationLoading;

  @override
  String toString() {
    return 'AutheticationState(phoneVerificationLoading: $phoneVerificationLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutheticationStateImpl &&
            (identical(
                    other.phoneVerificationLoading, phoneVerificationLoading) ||
                other.phoneVerificationLoading == phoneVerificationLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneVerificationLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutheticationStateImplCopyWith<_$AutheticationStateImpl> get copyWith =>
      __$$AutheticationStateImplCopyWithImpl<_$AutheticationStateImpl>(
          this, _$identity);
}

abstract class _AutheticationState implements AutheticationState {
  factory _AutheticationState({required final bool phoneVerificationLoading}) =
      _$AutheticationStateImpl;

  @override
  bool get phoneVerificationLoading;
  @override
  @JsonKey(ignore: true)
  _$$AutheticationStateImplCopyWith<_$AutheticationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
