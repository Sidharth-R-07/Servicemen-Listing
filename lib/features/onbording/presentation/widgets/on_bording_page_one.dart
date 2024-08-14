import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/services/c_naviagtion.dart';
import 'package:servicemen_listing/core/utils/app_assetes/app_images.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/features/home/presentation/views/home_screen.dart';

class OnBordingPageOne extends StatelessWidget {
  const OnBordingPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          AppImages.onBordImgOne,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Positioned(
            top: 50,
            right: 20,
            child: MaterialButton(
              minWidth: 50,
              height: 30,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(color: Colors.white.withOpacity(.5))),
              onPressed: () {
                CNaviagtion.pushReplacement(context, const HomeScreen());
              },
              child: const Text(
                "Skip",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            )),
        Positioned(
          bottom: 0,
          child: Container(
            width: size.width,
            height: size.height * 0.7,
            padding: const EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.transparent,
              AppColors.primaryColor.withOpacity(.8),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Gap(size.height * 0.34),
                const Text(
                  "Best Solution For\n Your Needs",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w500),
                ),
                const Gap(14),
                const Text(
                  "\"Now it is very easy to find your home Services. We have a lot of workers very experienced\"",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.grayText,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                const Gap(20),
              ],
            ),
          ),
        )
      ],
    );
  }
}
