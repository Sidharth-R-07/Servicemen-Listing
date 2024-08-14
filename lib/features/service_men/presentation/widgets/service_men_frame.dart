import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/features/service_men/domain/model/service_men_model.dart';

class ServiceMenFrame extends StatelessWidget {
  final ServiceMenModel serviceMen;
  const ServiceMenFrame({super.key, required this.serviceMen});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: .8,
            blurRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              serviceMen.image,
              fit: BoxFit.cover,
              width: 80,
              height: 80,
            ),
          ),
          const Gap(10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  serviceMen.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Gap(12),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: const Color(0xffEFA83D).withOpacity(.08),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xffEFA83D),
                        size: 16,
                      ),
                      const Gap(4),
                      Text(
                        serviceMen.rating.toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Gap(4),
                      Text(
                        '(${serviceMen.ratingUsersCount})',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Gap(10),
          const Icon(
            Icons.bookmark_border_rounded,
            color: AppColors.buttonColor,
          ),
        ],
      ),
    );
  }
}
