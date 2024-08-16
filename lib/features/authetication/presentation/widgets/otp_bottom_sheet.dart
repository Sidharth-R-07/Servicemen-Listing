import 'package:alert_banner/exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/services/c_naviagtion.dart';
import 'package:servicemen_listing/core/services/c_toast.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/core/utils/theme/app_fonts.dart';
import 'package:servicemen_listing/core/widgets/c_button.dart';
import 'package:servicemen_listing/features/app_root/presentation/views/app_root.dart';
import 'package:servicemen_listing/features/authetication/application/authetication_bloc.dart';
import 'package:servicemen_listing/features/authetication/presentation/views/registeration_screen.dart';

import 'package:servicemen_listing/features/authetication/presentation/widgets/otp_text_field.dart';

class OtpBottomSheet extends StatefulWidget {
  final bool isSignUp;
  const OtpBottomSheet({super.key, required this.isSignUp});

  @override
  State<OtpBottomSheet> createState() => _OtpBottomSheetState();
}

class _OtpBottomSheetState extends State<OtpBottomSheet> {
  final otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AutheticationBloc, AutheticationState>(
      builder: (context, state) {
        return Container(
          height: 350,
          width: double.infinity,
          padding: const EdgeInsets.only(left: 20, right: 20, top: 26),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Security Check",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(10),

              RichText(
                text: TextSpan(
                  text: "Please verify with the code send to your phone number",
                  style: TextStyle(
                      fontSize: 13.5,
                      color: Colors.black.withOpacity(.64),
                      fontFamily: AppFonts.ubuntu,
                      height: 1.5),
                  children: [
                    TextSpan(
                      text: " ${state.phoneNumber}",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: AppFonts.ubuntu,
                      ),
                    ),
                  ],
                ),
              ),

              const Gap(20),
              OtpTextField(
                controller: otpController,
              ),
              const Gap(28),
              CButton(
                width: double.infinity,
                height: 48,
                radius: 16,
                onPressed: () {
                  //CHECK OTP IS VALID
                  if (state.phoneVerificationRespones?.otp !=
                      otpController.text) {
                    CToast.error(context,
                        message: "Invalid OTP",
                        location: AlertBannerLocation.top);
                    return;
                  }
                  //CHECKING USER ALREADY EXISTS OR NOT
                  if (state.phoneVerificationRespones?.user == false) {
                    FocusManager.instance.primaryFocus?.unfocus();
                    Navigator.of(context).pop();
                    CNaviagtion.push(context, const RegistertionScreen());
                    return;
                  } else {
                    CToast.success(context, message: "Login Success");
                    Navigator.of(context).pop();
                    CNaviagtion.pushAndRemoveUntil(context, const AppRoot());
                  }
                },
                child: const Text(
                  "Verify & Login",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              const Gap(6),

              //SIGN UP
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't get code?",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(.60),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (state.phoneVerificationLoading)
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CupertinoActivityIndicator(
                        color: AppColors.buttonColor,
                      ),
                    )
                  else
                    TextButton(
                      onPressed: () {
                        if (state.phoneVerificationLoading) return;
                        context.read<AutheticationBloc>().add(
                              AutheticationEvent.verifyPhoneNumber(
                                  isSignUp: widget.isSignUp),
                            );
                      },
                      child: const Text(
                        "Resend",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.buttonColor,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
