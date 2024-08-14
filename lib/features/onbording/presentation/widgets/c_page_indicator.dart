import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/features/onbording/application/on_bording_bloc.dart';

class CPageIndicator extends StatelessWidget {
  const CPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBordingBloc, OnBordingState>(
      builder: (context, state) {
        return Center(
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const Gap(8),
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: state.currentPageIndex == index
                    ? Border.all(
                        color: AppColors.buttonColor,
                        width: 1,
                      )
                    : null,
              ),
              child: Container(
                width: 12,
                height: 12,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: state.currentPageIndex == index
                      ? AppColors.buttonColor
                      : const Color(0xffCDCDCD),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            itemCount: 2,
          ),
        );
      },
    );
  }
}
