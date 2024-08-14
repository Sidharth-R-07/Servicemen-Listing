import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/features/top_services/domain/model/top_service_model.dart';

class TopServiceFrame extends StatelessWidget {
  final TopServiceModel topServiceModel;
  const TopServiceFrame({super.key, required this.topServiceModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: topServiceModel.color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                topServiceModel.icon,
                width: 35,
                height: 35,
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.primaryColor,
                size: 20,
              )
            ],
          ),
          const Gap(20),
          Text(
            topServiceModel.title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
