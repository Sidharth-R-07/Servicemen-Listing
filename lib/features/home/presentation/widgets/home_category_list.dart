import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/widgets/c_shimmer.dart';
import 'package:servicemen_listing/features/category/application/category_bloc.dart';
import 'package:servicemen_listing/features/category/presentation/widgets/category_frame.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            if (state.fetchLoading) {
              return const _CategoryLoading();
            }
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  CategoryFrame(category: state.categoryList[index]),
              separatorBuilder: (context, index) => const Gap(16),
              itemCount: state.categoryList.length,
            );
          },
        ),
      ),
    );
  }
}

class _CategoryLoading extends StatelessWidget {
  const _CategoryLoading();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: const CShimmer(
          width: 70,
          height: 50,
        ),
      ),
      separatorBuilder: (context, index) => const Gap(16),
      itemCount: 5,
    );
  }
}
