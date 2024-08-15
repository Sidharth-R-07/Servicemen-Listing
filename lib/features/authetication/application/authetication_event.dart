part of 'authetication_bloc.dart';

@freezed
class AutheticationEvent with _$AutheticationEvent {
  const factory AutheticationEvent.verifyPhoneNumber(String phoneNUmber) =
      _VerifyPhoneNumber;
}
