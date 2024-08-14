import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/utils/app_assetes/app_images.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/core/utils/theme/app_fonts.dart';
import 'package:servicemen_listing/features/home/presentation/widgets/home_bannners.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBg,
        surfaceTintColor: AppColors.scaffoldBg,
        automaticallyImplyLeading: false,
        elevation: 10,
        shadowColor: AppColors.primaryColor.withOpacity(.1),
        toolbarHeight: 70,
        titleSpacing: 8,
        leadingWidth: 60,
        leading: Container(
          margin: const EdgeInsets.only(left: 12),
          child: Image.asset(
            AppImages.profileImage,
          ),
        ),
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Welcome Back!',
              style: TextStyle(
                color: Color(0xff656565),
                fontSize: 12,
                fontFamily: AppFonts.inter,
                fontWeight: FontWeight.w400,
              ),
            ),
            Gap(1),
            Text(
              'Chris Kevin',
              style: TextStyle(
                color: Color(0xff121212),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Gap(20),
          ),

          //BANNNER
          SliverToBoxAdapter(
            child: HomeBanners(),
          )
        ],
      ),
    );
  }
}
