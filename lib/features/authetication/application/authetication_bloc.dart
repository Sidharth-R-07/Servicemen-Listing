import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:servicemen_listing/core/utils/failures/failures.dart';
import 'package:servicemen_listing/core/utils/typedef/app_typedef.dart';
import 'package:servicemen_listing/features/authetication/domain/i_authetication_facade.dart';
import 'package:servicemen_listing/features/authetication/domain/model/create_user_model.dart';
import 'package:servicemen_listing/features/authetication/domain/model/phone_verification_respones.dart';

part 'authetication_event.dart';
part 'authetication_state.dart';
part 'authetication_bloc.freezed.dart';

class AutheticationBloc extends Bloc<AutheticationEvent, AutheticationState> {
  final IAutheticationFacade _autheticationFacade;
  AutheticationBloc(this._autheticationFacade)
      : super(AutheticationState.initial()) {
    //SET PHONE NUMBER
    on<_SetPhoneNumber>(_setPhoneNumber);

    //VERIFY PHONE NUMBER
    on<_VerifyPhoneNumber>(_verifyPhoneNumber);

    //CLEAR PHONE VERIFICATION DATA
    on<_ClearPhoneVerificationData>(_clearPhoneVerificationData);

    //CREATE USER
    on<_CreateUser>(_createUser);

    //CLEAR CREATE USER RESULT
    on<_ClearCreateUserData>(_clearCreateUserData);
  }

  Future<void> _clearCreateUserData(
      _ClearCreateUserData event, Emitter<AutheticationState> emit) async {
    emit(state.copyWith(createUserResult: null));
  }

  Future<void> _createUser(
      _CreateUser event, Emitter<AutheticationState> emit) async {
    emit(state.copyWith(createUserLoading: true));
    final result = await _autheticationFacade.createUser(event.createUser);

    emit(state.copyWith(
      createUserLoading: false,
      createUserResult: result,
    ));
  }

  Future<void> _setPhoneNumber(
      _SetPhoneNumber event, Emitter<AutheticationState> emit) async {
    emit(state.copyWith(phoneNumber: event.phoneNumber));
  }

  Future<void> _clearPhoneVerificationData(_ClearPhoneVerificationData event,
      Emitter<AutheticationState> emit) async {
    emit(state.copyWith(phoneVerificationresult: null));
  }

  Future<void> _verifyPhoneNumber(
      _VerifyPhoneNumber event, Emitter<AutheticationState> emit) async {
    emit(state.copyWith(phoneVerificationLoading: true));
    final result = await _autheticationFacade.phoneVerification(
        phoneNumber: state.phoneNumber, isSignUp: event.isSignUp);

    result.fold(
      (err) {},
      (success) {
        emit(state.copyWith(phoneVerificationRespones: success));
      },
    );

    emit(state.copyWith(
      phoneVerificationLoading: false,
      phoneVerificationresult: result,
    ));
  }
}
