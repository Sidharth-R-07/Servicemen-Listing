import 'package:servicemen_listing/core/utils/typedef/app_typedef.dart';
import 'package:servicemen_listing/features/authetication/domain/model/create_user_model.dart';
import 'package:servicemen_listing/features/authetication/domain/model/phone_verification_respones.dart';

abstract class IAutheticationFacade {
  //PHONE NUMBER VERIFICATION
  FutureResult<PhoneVerificationRespones> phoneVerification(
      {required String phoneNumber, required bool isSignUp}) {
    throw UnimplementedError("phoneVerification method is not implemented");
  }

  //CREATE NEW USER
  FutureResult<CreateUserResponseModel> createUser(
      CreateUserModel createUserModel) {
    throw UnimplementedError("createUser method is not implemented");
  }
}
