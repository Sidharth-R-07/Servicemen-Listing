import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/services/c_naviagtion.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/features/category/domain/model/category_model.dart';
import 'package:servicemen_listing/features/category/presentation/views/category_screen.dart';

class CategoryFrame extends StatelessWidget {
  final CategoryModel category;
  const CategoryFrame({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CNaviagtion.push(context, CategoryScreen(category: category));
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.buttonColor.withOpacity(.06),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.network(category.image),
            ),
            const Gap(4),
            Text(
              category.name,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
