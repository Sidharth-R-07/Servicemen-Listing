import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/features/category/domain/model/category_model.dart';
import 'package:servicemen_listing/features/service_men/domain/data/service_men_list.dart';
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
        title: Text("${category.title} Specialist's",
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
              length: 4,
              child: ButtonsTabBar(
                tabs: [
                  Tab(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: [
                          const Text(
                            'All',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const Gap(8),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              '12',
                              style: TextStyle(
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
                  const Tab(text: 'House'),
                  const Tab(text: 'Vechiles'),
                  const Tab(text: 'Appliances'),
                ],
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
          SliverList.separated(
              itemBuilder: (context, index) => ServiceMenFrame(
                    serviceMen: serviceMenList[index],
                  ),
              separatorBuilder: (context, index) => const Gap(22),
              itemCount: serviceMenList.length),
          const SliverToBoxAdapter(
            child: Gap(20),
          ),
        ],
      ),
    );
  }
}
