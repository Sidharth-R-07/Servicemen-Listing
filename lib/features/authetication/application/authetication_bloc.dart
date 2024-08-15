import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:servicemen_listing/features/authetication/domain/i_authetication_facade.dart';

part 'authetication_event.dart';
part 'authetication_state.dart';
part 'authetication_bloc.freezed.dart';

class AutheticationBloc extends Bloc<AutheticationEvent, AutheticationState> {
  final IAutheticationFacade _autheticationFacade;
  AutheticationBloc(this._autheticationFacade)
      : super(AutheticationState.initial()) {
    //VERIFY PHONE NUMBER
    on<_VerifyPhoneNumber>(_verifyPhoneNumber);
  }

  Future<void> _verifyPhoneNumber(
      _VerifyPhoneNumber event, Emitter<AutheticationState> emit) async {
    emit(state.copyWith(phoneVerificationLoading: true));
    final result =
        await _autheticationFacade.phoneVerification(event.phoneNUmber);
    result.fold((error) {}, (data) {});
    emit(state.copyWith(phoneVerificationLoading: false));
  }
}
