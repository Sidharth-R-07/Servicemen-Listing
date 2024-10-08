import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:servicemen_listing/core/utils/app_assetes/app_icons.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/features/app_root/application/app_root_bloc.dart';
import 'package:servicemen_listing/features/banners/application/banners_bloc.dart';
import 'package:servicemen_listing/features/category/application/category_bloc.dart';
import 'package:servicemen_listing/features/home/presentation/views/home_screen.dart';
import 'package:servicemen_listing/features/profile/presentation/views/profile_screen.dart';
import 'package:servicemen_listing/features/saved_service_men/application/saved_service_men_bloc.dart';
import 'package:servicemen_listing/features/saved_service_men/presentation/views/saved_item_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  final List<Widget> _screens = const [
    HomeScreen(),
    SavedItemScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    _fetchData(context);
    return BlocBuilder<AppRootBloc, AppRootState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.scaffoldBg,
          body: _screens[state.currentPageIndex],
          bottomNavigationBar: SizedBox(
            height: 70,
            child: Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                backgroundColor: AppColors.scaffoldBg,
                selectedItemColor: AppColors.primaryColor,
                unselectedItemColor: const Color(0xff727171),
                currentIndex: state.currentPageIndex,
                selectedFontSize: 12,
                unselectedFontSize: 12,
                onTap: (index) {
                  context
                      .read<AppRootBloc>()
                      .add(AppRootEvent.changeCurrentPaget(index));
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        state.currentPageIndex == 0
                            ? AppIcons.homeFilled
                            : AppIcons.homeOutline,
                        width: 25,
                        height: 25,
                      ),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        state.currentPageIndex == 1
                            ? AppIcons.savedFilled
                            : AppIcons.savedOutline,
                        width: 25,
                        height: 25,
                      ),
                      label: "Saved"),
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        state.currentPageIndex == 2
                            ? AppIcons.profileFilled
                            : AppIcons.profileOutline,
                        width: 25,
                        height: 25,
                      ),
                      label: "Profile"),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _fetchData(BuildContext context) {
    //FETCHING CATEGORY
    context.read<CategoryBloc>().add(const CategoryEvent.fetchCategories());

    //FETCHING SAVED ITEMS
    context
        .read<SavedServiceMenBloc>()
        .add(const SavedServiceMenEvent.fetchAllSavedServiceMen());

    //FETCH BANNERS
    context.read<BannersBloc>().add(const BannersEvent.fetchBanners());
  }
}
