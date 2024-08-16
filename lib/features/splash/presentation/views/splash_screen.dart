import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/services/c_naviagtion.dart';
import 'package:servicemen_listing/core/services/local_storage_services.dart';
import 'package:servicemen_listing/core/utils/app_assetes/app_icons.dart';
import 'package:servicemen_listing/core/utils/di/injection.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/features/authetication/presentation/views/sign_in_screen.dart';
import 'package:servicemen_listing/features/onbording/presentation/views/on_bording_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final localStorageService = sl<LocalStorageServices>();
  Future<void> _navigateFn(BuildContext context) async {
    final showOnBording = await localStorageService.getOnBordingStatus();

    Future.delayed(const Duration(seconds: 3), () {
      //IF IS USER FIRST TIME
      if (showOnBording) {
        CNaviagtion.pushAndRemoveUntil(context, const OnBordingScreen());
        return;
      }

      if (!showOnBording) {
        CNaviagtion.pushAndRemoveUntil(context, const SignInScreen());
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _navigateFn(context);
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AppIcons.appicon,
              width: 100,
              height: 100,
            ),
            const Gap(16),
            const Text(
              'Swift Service',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
