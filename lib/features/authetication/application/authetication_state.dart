part of 'authetication_bloc.dart';

@freezed
class AutheticationState with _$AutheticationState {
  factory AutheticationState({
    required String phoneNumber,
    required bool phoneVerificationLoading,
    required FailureOrSuccess? phoneVerificationresult,
    required PhoneVerificationRespones? phoneVerificationRespones,
    required bool createUserLoading,
    required FailureOrSuccess? createUserResult,
  }) = _AutheticationState;

  factory AutheticationState.initial() => AutheticationState(
        phoneVerificationLoading: false,
        phoneVerificationresult: null,
        phoneNumber: '',
        phoneVerificationRespones: null,
        createUserLoading: false,
        createUserResult: null,
      );
}
