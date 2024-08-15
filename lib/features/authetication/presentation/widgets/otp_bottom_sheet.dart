import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/core/utils/theme/app_fonts.dart';
import 'package:servicemen_listing/core/widgets/c_button.dart';

import 'package:servicemen_listing/features/authetication/presentation/widgets/otp_text_field.dart';

class OtpBottomSheet extends StatelessWidget {
  const OtpBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
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
              children: const [
                TextSpan(
                  text: " 7123456789",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.ubuntu,
                  ),
                ),
              ],
            ),
          ),

          const Gap(20),
          const OtpTextField(),
          const Gap(28),
          CButton(
            width: double.infinity,
            height: 48,
            radius: 16,
            onPressed: () {
              FocusManager.instance.primaryFocus?.unfocus();
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
              TextButton(
                onPressed: () {},
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
  }
}
