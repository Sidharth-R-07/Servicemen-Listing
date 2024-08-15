import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/services/c_naviagtion.dart';
import 'package:servicemen_listing/core/utils/app_assetes/app_images.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/core/widgets/c_button.dart';
import 'package:servicemen_listing/features/authetication/presentation/views/sign_up_screen.dart';
import 'package:servicemen_listing/features/authetication/presentation/widgets/c_phone_field.dart';
import 'package:servicemen_listing/features/authetication/presentation/widgets/otp_bottom_sheet.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff207EC2),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Gap(size.height * 0.17)),
          SliverToBoxAdapter(
            child: Center(
              child: CircleAvatar(
                radius: 85,
                backgroundColor: Colors.white.withOpacity(.08),
                child: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(.16),
                  radius: 65,
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white.withOpacity(.32),
                    child: Opacity(
                      opacity: 0.8,
                      child: Image.asset(
                        AppImages.signIn,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 350,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 26),
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
              "Welcome back!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(8),
            Text(
              "Sign in for fast services and new offers.",
              style: TextStyle(
                  fontSize: 13.5, color: Colors.black.withOpacity(.64)),
            ),
            const Gap(20),
            const Text("Enter phone number", style: TextStyle(fontSize: 14)),
            const Gap(10),
            const CPhoneField(),
            const Gap(28),
            CButton(
              width: double.infinity,
              height: 48,
              radius: 16,
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (ctx) => Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(ctx).viewInsets.bottom),
                    child: const OtpBottomSheet(),
                  ),
                );
              },
              child: const Text(
                "Receive Verification Code",
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
                  "Not a member?",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(.60),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    CNaviagtion.pushReplacement(context, const SignUpScreen());
                  },
                  child: const Text(
                    "Signup",
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
      ),
    );
  }
}
