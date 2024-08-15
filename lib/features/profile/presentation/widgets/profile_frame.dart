import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/utils/app_assetes/app_icons.dart';
import 'package:servicemen_listing/core/utils/app_assetes/app_images.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/core/utils/theme/app_fonts.dart';

class ProfileFrame extends StatelessWidget {
  const ProfileFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  AppImages.profileImage,
                ),
              ),
              Positioned(
                bottom: 3,
                right: 3,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: const BoxDecoration(
                    color: AppColors.buttonColor,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          const Gap(14),
          const Text(
            'Chris Kevin',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Gap(18),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: AppColors.buttonColor, width: .8),
            ),
            onPressed: () {},
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Logout',
                  style: TextStyle(
                      color: AppColors.buttonColor,
                      fontSize: 14,
                      fontFamily: AppFonts.inter),
                ),
                const Gap(8),
                ImageIcon(
                  AssetImage(AppIcons.logout),
                  size: 18,
                  color: AppColors.buttonColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
