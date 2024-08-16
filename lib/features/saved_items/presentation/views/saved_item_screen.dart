import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/features/service_men/domain/data/service_men_list.dart';
import 'package:servicemen_listing/features/service_men/presentation/widgets/service_men_frame.dart';

class SavedItemScreen extends StatelessWidget {
  const SavedItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          backgroundColor: AppColors.scaffoldBg,
          surfaceTintColor: AppColors.scaffoldBg,
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Saved",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryColor,
                  letterSpacing: 0.7,
                ),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Gap(20),
        ),
        // SliverList.separated(
        //   itemBuilder: (context, index) => ServiceMenFrame(
        //     serviceMen: serviceMenList[index],
        //     isSaved: true,
        //   ),
        //   separatorBuilder: (context, index) => const Gap(24),
        //   itemCount: 1,
        // )
      ],
    );
  }
}
