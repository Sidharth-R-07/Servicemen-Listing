import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';

class OtpTextField extends StatelessWidget {
  const OtpTextField({super.key});

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = AppColors.buttonColor;
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color(0xffD9D9D9);

    final defaultPinTheme = PinTheme(
      width: 70,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor),
      ),
    );

    return Center(
      child: Pinput(
        autofocus: true,
        defaultPinTheme: defaultPinTheme,
        separatorBuilder: (index) => const Gap(16),
        hapticFeedbackType: HapticFeedbackType.lightImpact,
        onCompleted: (pin) {
          debugPrint('onCompleted: $pin');
        },

        // cursor: Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     Container(
        //       margin: const EdgeInsets.only(bottom: 9),
        //       width: 22,
        //       height: 1,
        //       color: focusedBorderColor,
        //     ),
        //   ],
        // ),
        focusedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: focusedBorderColor),
          ),
        ),
        submittedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            color: fillColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: focusedBorderColor),
          ),
        ),
        errorPinTheme: defaultPinTheme.copyBorderWith(
          border: Border.all(color: Colors.redAccent),
        ),
      ),
    );
  }
}
