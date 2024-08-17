import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/features/category/application/category_bloc.dart';
import 'package:servicemen_listing/features/category/domain/model/category_model.dart';
import 'package:servicemen_listing/features/service_men/presentation/widgets/service_men_frame.dart';

class CategoryScreen extends StatelessWidget {
  final CategoryModel category;
  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBg,
        surfaceTintColor: AppColors.scaffoldBg,
        elevation: 0,
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 12),
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xffE5E7EB), width: 1),
            ),
            alignment: Alignment.center,
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              size: 22,
            ),
          ),
        ),
        centerTitle: true,
        title: Text("${category.name} Specialist's",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryColor,
            )),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Gap(8),
          ),
          SliverToBoxAdapter(
            child: DefaultTabController(
              length: category.services.length,
              child: ButtonsTabBar(
                onTap: (index) {
                  context
                      .read<CategoryBloc>()
                      .add(CategoryEvent.changeTabIndex(index));
                },
                tabs: category.services
                    .map(
                      (e) => Tab(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Row(
                            children: [
                              Text(
                                e.name,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              const Gap(8),
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Text(
                                  '${category.services[0].servicePeople.length}',
                                  style: const TextStyle(
                                    fontSize: 10,
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
                backgroundColor: AppColors.buttonColor,
                unselectedBackgroundColor: AppColors.scaffoldBg,
                borderColor: AppColors.primaryColor,
                unselectedBorderColor: AppColors.primaryColor,
                borderWidth: .6,
                labelSpacing: 12,
                buttonMargin: const EdgeInsets.symmetric(horizontal: 8),
                radius: 18,
                height: 35,
                unselectedLabelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Gap(20),
          ),
          if (category.services[0].servicePeople.isEmpty)
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                  child: Text(
                "No Service People Available Now!",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )),
            )
          else
            SliverList.separated(
                itemBuilder: (context, index) => ServiceMenFrame(
                    serviceMen: category.services[0].servicePeople[index]),
                separatorBuilder: (context, index) => const Gap(22),
                itemCount: category.services[0].servicePeople.length),
          const SliverToBoxAdapter(
            child: Gap(20),
          ),
        ],
      ),
    );
  }
}
