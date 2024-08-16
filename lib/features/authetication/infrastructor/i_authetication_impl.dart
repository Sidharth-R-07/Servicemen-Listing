import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:servicemen_listing/core/services/notification_service.dart';
import 'package:servicemen_listing/core/utils/constant/api_urls.dart';
import 'package:servicemen_listing/core/utils/failures/failures.dart';
import 'package:servicemen_listing/core/utils/typedef/app_typedef.dart';
import 'package:servicemen_listing/features/authetication/domain/i_authetication_facade.dart';
import 'package:servicemen_listing/features/authetication/domain/model/create_user_model.dart';
import 'package:servicemen_listing/features/authetication/domain/model/phone_verification_respones.dart';

@LazySingleton(as: IAutheticationFacade)
class IAutheticationImpl implements IAutheticationFacade {
  final Dio _dio;
  final NotificationService _notificationService;

  IAutheticationImpl(this._dio, this._notificationService);
  @override
  FutureResult<PhoneVerificationRespones> phoneVerification(
      String phoneNumber) async {
    try {
      var formData = FormData.fromMap({'phone_number': phoneNumber});

      var response = await _dio.post(ApiUrls.phoneVerification, data: formData);

      if (response.statusCode == 200) {
        _notificationService.showOTPNotification(
            PhoneVerificationRespones.fromMap(response.data).otp);
        return right(PhoneVerificationRespones.fromMap(response.data));
      }

      return left(MainFailure.serverFailure(errorMsg: response.data));
    } catch (e) {
      log(e.toString());
      return left(MainFailure.serverFailure(errorMsg: e.toString()));
    }
  }

  @override
  FutureResult<CreateUserResponseModel> createUser(
      CreateUserModel createUserModel) async {
    try {
      var formData = FormData.fromMap(createUserModel.toMap());
      var response = await _dio.post(ApiUrls.createUser, data: formData);

      log(response.data.toString(), name: "Response");

      if (response.statusCode == 200) {
        return right(CreateUserResponseModel.fromMap(response.data));
      }

      return left(MainFailure.serverFailure(errorMsg: response.data));
    } catch (e) {
      log(e.toString());
      return left(MainFailure.serverFailure(errorMsg: e.toString()));
    }
  }
}
