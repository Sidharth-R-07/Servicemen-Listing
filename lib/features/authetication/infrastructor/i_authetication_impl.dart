import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:servicemen_listing/core/utils/constant/api_urls.dart';
import 'package:servicemen_listing/core/utils/failures/failures.dart';
import 'package:servicemen_listing/core/utils/typedef/app_typedef.dart';
import 'package:servicemen_listing/features/authetication/domain/i_authetication_facade.dart';
import 'package:servicemen_listing/features/authetication/domain/model/phone_verification_respones.dart';

@LazySingleton(as: IAutheticationFacade)
class IAutheticationImpl implements IAutheticationFacade {
  final Dio _dio;

  IAutheticationImpl(this._dio);
  @override
  FutureResult<PhoneVerificationRespones> phoneVerification(
      String phoneNumber) async {
    try {
      //API CALL

      log(phoneNumber);

      var formData = FormData.fromMap({
        'phone_number': phoneNumber,
      });

      var response = await _dio.post(ApiUrls.phoneVerification, data: formData);

      //TODO: HANDLE RESPONSE

      //CHECK STAR=TUS CODE IF 200 THEN SEND NOTIFICATION

      return right(PhoneVerificationRespones(otp: "1234", user: false));
    } catch (e) {
      log(e.toString());
      return left(MainFailure.serverFailure(errorMsg: e.toString()));
    }
  }
}
