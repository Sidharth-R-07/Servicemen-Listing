import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/features/saved_service_men/application/saved_service_men_bloc.dart';
import 'package:servicemen_listing/features/service_men/presentation/widgets/service_men_frame.dart';

class SavedItemScreen extends StatelessWidget {
  const SavedItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SavedServiceMenBloc, SavedServiceMenState>(
      builder: (context, state) {
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
            if (state.fetchLaoding)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                    child: CupertinoActivityIndicator(
                  color: AppColors.buttonColor,
                )),
              )
            else if (state.savedServiceMenList.isEmpty && !state.fetchLaoding)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Text(
                    "No Saved Item Fond Yet!",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              )
            else
              SliverList.separated(
                itemBuilder: (context, index) => ServiceMenFrame(
                    serviceMen: state.savedServiceMenList[index]),
                separatorBuilder: (context, index) => const Gap(24),
                itemCount: state.savedServiceMenList.length,
              )
          ],
        );
      },
    );
  }
}
