part of 'authetication_bloc.dart';

@freezed
class AutheticationState with _$AutheticationState {
  factory AutheticationState({
    required bool phoneVerificationLoading,
  }) = _AutheticationState;

  factory AutheticationState.initial() => AutheticationState(
        phoneVerificationLoading: false,
      );
}
