import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/features/category/domain/data/category_list.dart';
import 'package:servicemen_listing/features/category/presentation/widgets/category_frame.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              CategoryFrame(category: categoryList[index]),
          separatorBuilder: (context, index) => const Gap(16),
          itemCount: categoryList.length,
        ),
      ),
    );
  }
}
