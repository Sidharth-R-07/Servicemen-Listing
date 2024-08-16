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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() clearPhoneVerificationData,
    required TResult Function(CreateUserModel createUser) createUser,
    required TResult Function() clearCreateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function()? verifyPhoneNumber,
    TResult? Function()? clearPhoneVerificationData,
    TResult? Function(CreateUserModel createUser)? createUser,
    TResult? Function()? clearCreateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? clearPhoneVerificationData,
    TResult Function(CreateUserModel createUser)? createUser,
    TResult Function()? clearCreateUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_ClearPhoneVerificationData value)
        clearPhoneVerificationData,
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_ClearCreateUserData value) clearCreateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult? Function(_ClearPhoneVerificationData value)?
        clearPhoneVerificationData,
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_ClearCreateUserData value)? clearCreateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_ClearPhoneVerificationData value)?
        clearPhoneVerificationData,
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_ClearCreateUserData value)? clearCreateUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutheticationEventCopyWith<$Res> {
  factory $AutheticationEventCopyWith(
          AutheticationEvent value, $Res Function(AutheticationEvent) then) =
      _$AutheticationEventCopyWithImpl<$Res, AutheticationEvent>;
}

/// @nodoc
class _$AutheticationEventCopyWithImpl<$Res, $Val extends AutheticationEvent>
    implements $AutheticationEventCopyWith<$Res> {
  _$AutheticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetPhoneNumberImplCopyWith<$Res> {
  factory _$$SetPhoneNumberImplCopyWith(_$SetPhoneNumberImpl value,
          $Res Function(_$SetPhoneNumberImpl) then) =
      __$$SetPhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$SetPhoneNumberImplCopyWithImpl<$Res>
    extends _$AutheticationEventCopyWithImpl<$Res, _$SetPhoneNumberImpl>
    implements _$$SetPhoneNumberImplCopyWith<$Res> {
  __$$SetPhoneNumberImplCopyWithImpl(
      _$SetPhoneNumberImpl _value, $Res Function(_$SetPhoneNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$SetPhoneNumberImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetPhoneNumberImpl implements _SetPhoneNumber {
  const _$SetPhoneNumberImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AutheticationEvent.setPhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPhoneNumberImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPhoneNumberImplCopyWith<_$SetPhoneNumberImpl> get copyWith =>
      __$$SetPhoneNumberImplCopyWithImpl<_$SetPhoneNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() clearPhoneVerificationData,
    required TResult Function(CreateUserModel createUser) createUser,
    required TResult Function() clearCreateUserData,
  }) {
    return setPhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function()? verifyPhoneNumber,
    TResult? Function()? clearPhoneVerificationData,
    TResult? Function(CreateUserModel createUser)? createUser,
    TResult? Function()? clearCreateUserData,
  }) {
    return setPhoneNumber?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? clearPhoneVerificationData,
    TResult Function(CreateUserModel createUser)? createUser,
    TResult Function()? clearCreateUserData,
    required TResult orElse(),
  }) {
    if (setPhoneNumber != null) {
      return setPhoneNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_ClearPhoneVerificationData value)
        clearPhoneVerificationData,
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_ClearCreateUserData value) clearCreateUserData,
  }) {
    return setPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult? Function(_ClearPhoneVerificationData value)?
        clearPhoneVerificationData,
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_ClearCreateUserData value)? clearCreateUserData,
  }) {
    return setPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_ClearPhoneVerificationData value)?
        clearPhoneVerificationData,
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_ClearCreateUserData value)? clearCreateUserData,
    required TResult orElse(),
  }) {
    if (setPhoneNumber != null) {
      return setPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _SetPhoneNumber implements AutheticationEvent {
  const factory _SetPhoneNumber(final String phoneNumber) =
      _$SetPhoneNumberImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$SetPhoneNumberImplCopyWith<_$SetPhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyPhoneNumberImplCopyWith<$Res> {
  factory _$$VerifyPhoneNumberImplCopyWith(_$VerifyPhoneNumberImpl value,
          $Res Function(_$VerifyPhoneNumberImpl) then) =
      __$$VerifyPhoneNumberImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyPhoneNumberImplCopyWithImpl<$Res>
    extends _$AutheticationEventCopyWithImpl<$Res, _$VerifyPhoneNumberImpl>
    implements _$$VerifyPhoneNumberImplCopyWith<$Res> {
  __$$VerifyPhoneNumberImplCopyWithImpl(_$VerifyPhoneNumberImpl _value,
      $Res Function(_$VerifyPhoneNumberImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyPhoneNumberImpl implements _VerifyPhoneNumber {
  const _$VerifyPhoneNumberImpl();

  @override
  String toString() {
    return 'AutheticationEvent.verifyPhoneNumber()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyPhoneNumberImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() clearPhoneVerificationData,
    required TResult Function(CreateUserModel createUser) createUser,
    required TResult Function() clearCreateUserData,
  }) {
    return verifyPhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function()? verifyPhoneNumber,
    TResult? Function()? clearPhoneVerificationData,
    TResult? Function(CreateUserModel createUser)? createUser,
    TResult? Function()? clearCreateUserData,
  }) {
    return verifyPhoneNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? clearPhoneVerificationData,
    TResult Function(CreateUserModel createUser)? createUser,
    TResult Function()? clearCreateUserData,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_ClearPhoneVerificationData value)
        clearPhoneVerificationData,
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_ClearCreateUserData value) clearCreateUserData,
  }) {
    return verifyPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult? Function(_ClearPhoneVerificationData value)?
        clearPhoneVerificationData,
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_ClearCreateUserData value)? clearCreateUserData,
  }) {
    return verifyPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_ClearPhoneVerificationData value)?
        clearPhoneVerificationData,
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_ClearCreateUserData value)? clearCreateUserData,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _VerifyPhoneNumber implements AutheticationEvent {
  const factory _VerifyPhoneNumber() = _$VerifyPhoneNumberImpl;
}

/// @nodoc
abstract class _$$ClearPhoneVerificationDataImplCopyWith<$Res> {
  factory _$$ClearPhoneVerificationDataImplCopyWith(
          _$ClearPhoneVerificationDataImpl value,
          $Res Function(_$ClearPhoneVerificationDataImpl) then) =
      __$$ClearPhoneVerificationDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPhoneVerificationDataImplCopyWithImpl<$Res>
    extends _$AutheticationEventCopyWithImpl<$Res,
        _$ClearPhoneVerificationDataImpl>
    implements _$$ClearPhoneVerificationDataImplCopyWith<$Res> {
  __$$ClearPhoneVerificationDataImplCopyWithImpl(
      _$ClearPhoneVerificationDataImpl _value,
      $Res Function(_$ClearPhoneVerificationDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearPhoneVerificationDataImpl implements _ClearPhoneVerificationData {
  const _$ClearPhoneVerificationDataImpl();

  @override
  String toString() {
    return 'AutheticationEvent.clearPhoneVerificationData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPhoneVerificationDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() clearPhoneVerificationData,
    required TResult Function(CreateUserModel createUser) createUser,
    required TResult Function() clearCreateUserData,
  }) {
    return clearPhoneVerificationData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function()? verifyPhoneNumber,
    TResult? Function()? clearPhoneVerificationData,
    TResult? Function(CreateUserModel createUser)? createUser,
    TResult? Function()? clearCreateUserData,
  }) {
    return clearPhoneVerificationData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? clearPhoneVerificationData,
    TResult Function(CreateUserModel createUser)? createUser,
    TResult Function()? clearCreateUserData,
    required TResult orElse(),
  }) {
    if (clearPhoneVerificationData != null) {
      return clearPhoneVerificationData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_ClearPhoneVerificationData value)
        clearPhoneVerificationData,
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_ClearCreateUserData value) clearCreateUserData,
  }) {
    return clearPhoneVerificationData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult? Function(_ClearPhoneVerificationData value)?
        clearPhoneVerificationData,
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_ClearCreateUserData value)? clearCreateUserData,
  }) {
    return clearPhoneVerificationData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_ClearPhoneVerificationData value)?
        clearPhoneVerificationData,
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_ClearCreateUserData value)? clearCreateUserData,
    required TResult orElse(),
  }) {
    if (clearPhoneVerificationData != null) {
      return clearPhoneVerificationData(this);
    }
    return orElse();
  }
}

abstract class _ClearPhoneVerificationData implements AutheticationEvent {
  const factory _ClearPhoneVerificationData() =
      _$ClearPhoneVerificationDataImpl;
}

/// @nodoc
abstract class _$$CreateUserImplCopyWith<$Res> {
  factory _$$CreateUserImplCopyWith(
          _$CreateUserImpl value, $Res Function(_$CreateUserImpl) then) =
      __$$CreateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateUserModel createUser});
}

/// @nodoc
class __$$CreateUserImplCopyWithImpl<$Res>
    extends _$AutheticationEventCopyWithImpl<$Res, _$CreateUserImpl>
    implements _$$CreateUserImplCopyWith<$Res> {
  __$$CreateUserImplCopyWithImpl(
      _$CreateUserImpl _value, $Res Function(_$CreateUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createUser = null,
  }) {
    return _then(_$CreateUserImpl(
      null == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as CreateUserModel,
    ));
  }
}

/// @nodoc

class _$CreateUserImpl implements _CreateUser {
  const _$CreateUserImpl(this.createUser);

  @override
  final CreateUserModel createUser;

  @override
  String toString() {
    return 'AutheticationEvent.createUser(createUser: $createUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserImpl &&
            (identical(other.createUser, createUser) ||
                other.createUser == createUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserImplCopyWith<_$CreateUserImpl> get copyWith =>
      __$$CreateUserImplCopyWithImpl<_$CreateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() clearPhoneVerificationData,
    required TResult Function(CreateUserModel createUser) createUser,
    required TResult Function() clearCreateUserData,
  }) {
    return createUser(this.createUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function()? verifyPhoneNumber,
    TResult? Function()? clearPhoneVerificationData,
    TResult? Function(CreateUserModel createUser)? createUser,
    TResult? Function()? clearCreateUserData,
  }) {
    return createUser?.call(this.createUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? clearPhoneVerificationData,
    TResult Function(CreateUserModel createUser)? createUser,
    TResult Function()? clearCreateUserData,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this.createUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_ClearPhoneVerificationData value)
        clearPhoneVerificationData,
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_ClearCreateUserData value) clearCreateUserData,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult? Function(_ClearPhoneVerificationData value)?
        clearPhoneVerificationData,
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_ClearCreateUserData value)? clearCreateUserData,
  }) {
    return createUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_ClearPhoneVerificationData value)?
        clearPhoneVerificationData,
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_ClearCreateUserData value)? clearCreateUserData,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this);
    }
    return orElse();
  }
}

abstract class _CreateUser implements AutheticationEvent {
  const factory _CreateUser(final CreateUserModel createUser) =
      _$CreateUserImpl;

  CreateUserModel get createUser;
  @JsonKey(ignore: true)
  _$$CreateUserImplCopyWith<_$CreateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCreateUserDataImplCopyWith<$Res> {
  factory _$$ClearCreateUserDataImplCopyWith(_$ClearCreateUserDataImpl value,
          $Res Function(_$ClearCreateUserDataImpl) then) =
      __$$ClearCreateUserDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCreateUserDataImplCopyWithImpl<$Res>
    extends _$AutheticationEventCopyWithImpl<$Res, _$ClearCreateUserDataImpl>
    implements _$$ClearCreateUserDataImplCopyWith<$Res> {
  __$$ClearCreateUserDataImplCopyWithImpl(_$ClearCreateUserDataImpl _value,
      $Res Function(_$ClearCreateUserDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearCreateUserDataImpl implements _ClearCreateUserData {
  const _$ClearCreateUserDataImpl();

  @override
  String toString() {
    return 'AutheticationEvent.clearCreateUserData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCreateUserDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() clearPhoneVerificationData,
    required TResult Function(CreateUserModel createUser) createUser,
    required TResult Function() clearCreateUserData,
  }) {
    return clearCreateUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function()? verifyPhoneNumber,
    TResult? Function()? clearPhoneVerificationData,
    TResult? Function(CreateUserModel createUser)? createUser,
    TResult? Function()? clearCreateUserData,
  }) {
    return clearCreateUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? clearPhoneVerificationData,
    TResult Function(CreateUserModel createUser)? createUser,
    TResult Function()? clearCreateUserData,
    required TResult orElse(),
  }) {
    if (clearCreateUserData != null) {
      return clearCreateUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_ClearPhoneVerificationData value)
        clearPhoneVerificationData,
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_ClearCreateUserData value) clearCreateUserData,
  }) {
    return clearCreateUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult? Function(_ClearPhoneVerificationData value)?
        clearPhoneVerificationData,
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_ClearCreateUserData value)? clearCreateUserData,
  }) {
    return clearCreateUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_ClearPhoneVerificationData value)?
        clearPhoneVerificationData,
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_ClearCreateUserData value)? clearCreateUserData,
    required TResult orElse(),
  }) {
    if (clearCreateUserData != null) {
      return clearCreateUserData(this);
    }
    return orElse();
  }
}

abstract class _ClearCreateUserData implements AutheticationEvent {
  const factory _ClearCreateUserData() = _$ClearCreateUserDataImpl;
}

/// @nodoc
mixin _$AutheticationState {
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get phoneVerificationLoading => throw _privateConstructorUsedError;
  Either<MainFailure, dynamic>? get phoneVerificationresult =>
      throw _privateConstructorUsedError;
  PhoneVerificationRespones? get phoneVerificationRespones =>
      throw _privateConstructorUsedError;
  bool get createUserLoading => throw _privateConstructorUsedError;
  Either<MainFailure, dynamic>? get createUserResult =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {String phoneNumber,
      bool phoneVerificationLoading,
      Either<MainFailure, dynamic>? phoneVerificationresult,
      PhoneVerificationRespones? phoneVerificationRespones,
      bool createUserLoading,
      Either<MainFailure, dynamic>? createUserResult});
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
    Object? phoneNumber = null,
    Object? phoneVerificationLoading = null,
    Object? phoneVerificationresult = freezed,
    Object? phoneVerificationRespones = freezed,
    Object? createUserLoading = null,
    Object? createUserResult = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      phoneVerificationLoading: null == phoneVerificationLoading
          ? _value.phoneVerificationLoading
          : phoneVerificationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneVerificationresult: freezed == phoneVerificationresult
          ? _value.phoneVerificationresult
          : phoneVerificationresult // ignore: cast_nullable_to_non_nullable
              as Either<MainFailure, dynamic>?,
      phoneVerificationRespones: freezed == phoneVerificationRespones
          ? _value.phoneVerificationRespones
          : phoneVerificationRespones // ignore: cast_nullable_to_non_nullable
              as PhoneVerificationRespones?,
      createUserLoading: null == createUserLoading
          ? _value.createUserLoading
          : createUserLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      createUserResult: freezed == createUserResult
          ? _value.createUserResult
          : createUserResult // ignore: cast_nullable_to_non_nullable
              as Either<MainFailure, dynamic>?,
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
  $Res call(
      {String phoneNumber,
      bool phoneVerificationLoading,
      Either<MainFailure, dynamic>? phoneVerificationresult,
      PhoneVerificationRespones? phoneVerificationRespones,
      bool createUserLoading,
      Either<MainFailure, dynamic>? createUserResult});
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
    Object? phoneNumber = null,
    Object? phoneVerificationLoading = null,
    Object? phoneVerificationresult = freezed,
    Object? phoneVerificationRespones = freezed,
    Object? createUserLoading = null,
    Object? createUserResult = freezed,
  }) {
    return _then(_$AutheticationStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      phoneVerificationLoading: null == phoneVerificationLoading
          ? _value.phoneVerificationLoading
          : phoneVerificationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneVerificationresult: freezed == phoneVerificationresult
          ? _value.phoneVerificationresult
          : phoneVerificationresult // ignore: cast_nullable_to_non_nullable
              as Either<MainFailure, dynamic>?,
      phoneVerificationRespones: freezed == phoneVerificationRespones
          ? _value.phoneVerificationRespones
          : phoneVerificationRespones // ignore: cast_nullable_to_non_nullable
              as PhoneVerificationRespones?,
      createUserLoading: null == createUserLoading
          ? _value.createUserLoading
          : createUserLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      createUserResult: freezed == createUserResult
          ? _value.createUserResult
          : createUserResult // ignore: cast_nullable_to_non_nullable
              as Either<MainFailure, dynamic>?,
    ));
  }
}

/// @nodoc

class _$AutheticationStateImpl implements _AutheticationState {
  _$AutheticationStateImpl(
      {required this.phoneNumber,
      required this.phoneVerificationLoading,
      required this.phoneVerificationresult,
      required this.phoneVerificationRespones,
      required this.createUserLoading,
      required this.createUserResult});

  @override
  final String phoneNumber;
  @override
  final bool phoneVerificationLoading;
  @override
  final Either<MainFailure, dynamic>? phoneVerificationresult;
  @override
  final PhoneVerificationRespones? phoneVerificationRespones;
  @override
  final bool createUserLoading;
  @override
  final Either<MainFailure, dynamic>? createUserResult;

  @override
  String toString() {
    return 'AutheticationState(phoneNumber: $phoneNumber, phoneVerificationLoading: $phoneVerificationLoading, phoneVerificationresult: $phoneVerificationresult, phoneVerificationRespones: $phoneVerificationRespones, createUserLoading: $createUserLoading, createUserResult: $createUserResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutheticationStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(
                    other.phoneVerificationLoading, phoneVerificationLoading) ||
                other.phoneVerificationLoading == phoneVerificationLoading) &&
            (identical(
                    other.phoneVerificationresult, phoneVerificationresult) ||
                other.phoneVerificationresult == phoneVerificationresult) &&
            (identical(other.phoneVerificationRespones,
                    phoneVerificationRespones) ||
                other.phoneVerificationRespones == phoneVerificationRespones) &&
            (identical(other.createUserLoading, createUserLoading) ||
                other.createUserLoading == createUserLoading) &&
            (identical(other.createUserResult, createUserResult) ||
                other.createUserResult == createUserResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      phoneNumber,
      phoneVerificationLoading,
      phoneVerificationresult,
      phoneVerificationRespones,
      createUserLoading,
      createUserResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutheticationStateImplCopyWith<_$AutheticationStateImpl> get copyWith =>
      __$$AutheticationStateImplCopyWithImpl<_$AutheticationStateImpl>(
          this, _$identity);
}

abstract class _AutheticationState implements AutheticationState {
  factory _AutheticationState(
          {required final String phoneNumber,
          required final bool phoneVerificationLoading,
          required final Either<MainFailure, dynamic>? phoneVerificationresult,
          required final PhoneVerificationRespones? phoneVerificationRespones,
          required final bool createUserLoading,
          required final Either<MainFailure, dynamic>? createUserResult}) =
      _$AutheticationStateImpl;

  @override
  String get phoneNumber;
  @override
  bool get phoneVerificationLoading;
  @override
  Either<MainFailure, dynamic>? get phoneVerificationresult;
  @override
  PhoneVerificationRespones? get phoneVerificationRespones;
  @override
  bool get createUserLoading;
  @override
  Either<MainFailure, dynamic>? get createUserResult;
  @override
  @JsonKey(ignore: true)
  _$$AutheticationStateImplCopyWith<_$AutheticationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
