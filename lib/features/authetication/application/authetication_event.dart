part of 'authetication_bloc.dart';

@freezed
class AutheticationEvent with _$AutheticationEvent {
  //SET PHONE NUMBER
  const factory AutheticationEvent.setPhoneNumber(String phoneNumber) =
      _SetPhoneNumber;

  //VERIFY PHONE NUMBER
  const factory AutheticationEvent.verifyPhoneNumber() = _VerifyPhoneNumber;

  //CLEAR PHONE VERIFICATION DATA
  const factory AutheticationEvent.clearPhoneVerificationData() =
      _ClearPhoneVerificationData;

  //CREATE USER
  const factory AutheticationEvent.createUser(CreateUserModel createUser) =
      _CreateUser;

  //CLEAR CREATE USER RESULT
  const factory AutheticationEvent.clearCreateUserData() = _ClearCreateUserData;
}
