import 'package:servicemen_listing/core/utils/typedef/app_typedef.dart';
import 'package:servicemen_listing/features/authetication/domain/model/phone_verification_respones.dart';

abstract class IAutheticationFacade {
  //PHONE NUMBER VERIFICATION
  FutureResult<PhoneVerificationRespones> phoneVerification(
      String phoneNumber) {
    throw UnimplementedError("phoneVerification method is not implemented");
  }
}
