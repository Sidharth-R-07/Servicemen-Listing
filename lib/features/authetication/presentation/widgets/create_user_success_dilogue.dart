import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/utils/app_assetes/app_icons.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';

class CreateUserSuccessDilogue extends StatelessWidget {
  final BuildContext ctx;
  const CreateUserSuccessDilogue({super.key, required this.ctx});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.of(context).pop();
    });
    return PopScope(
      canPop: false,
      child: AlertDialog(
        backgroundColor: AppColors.scaffoldBg,
        surfaceTintColor: AppColors.scaffoldBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
        insetPadding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppIcons.createdUser,
              height: 100,
              width: 100,
            ),
            const Gap(10),
            const Text(
              "Congratulations!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Gap(10),
            const Text(
                "Your swift service account has been created successfully!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff595959))),
          ],
        ),
      ),
    );
  }
}
