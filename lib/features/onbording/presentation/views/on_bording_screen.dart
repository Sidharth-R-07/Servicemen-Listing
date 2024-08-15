import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:servicemen_listing/core/services/c_naviagtion.dart';

import 'package:servicemen_listing/core/utils/theme/app_colors.dart';
import 'package:servicemen_listing/core/widgets/c_button.dart';
import 'package:servicemen_listing/features/authetication/presentation/views/sign_in_screen.dart';
import 'package:servicemen_listing/features/onbording/application/on_bording_bloc.dart';
import 'package:servicemen_listing/features/onbording/presentation/widgets/c_page_indicator.dart';
import 'package:servicemen_listing/features/onbording/presentation/widgets/on_bording_page_one.dart';
import 'package:servicemen_listing/features/onbording/presentation/widgets/on_bording_page_two.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: context.read<OnBordingBloc>().state.currentPageIndex,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      body: BlocBuilder<OnBordingBloc, OnBordingState>(
        builder: (context, state) {
          return Stack(
            fit: StackFit.expand,
            children: [
              PageView(
                controller: _pageController,
                onPageChanged: (value) {
                  context
                      .read<OnBordingBloc>()
                      .add(OnBordingEvent.changePage(value));
                },
                children: const [
                  OnBordingPageOne(),
                  OnBordingPageTwo(),
                ],
              ),
              const Positioned(
                height: 40,
                bottom: 100,
                left: 0,
                right: 0,
                child: CPageIndicator(),
              ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Center(
                  child: CButton(
                      width: size.width * 0.9,
                      onPressed: () {
                        if (state.currentPageIndex == 0) {
                          //CHANGE PAGE INDEX TO TWO
                          _pageController.animateToPage(1,
                              duration: const Duration(milliseconds: 100),
                              curve: Curves.easeIn);
                        } else {
                          //NAVIGATE TO NEXT SCREEN
                          CNaviagtion.pushReplacement(
                              context, const SignInScreen());
                        }
                      },
                      height: 46,
                      child: Text(
                        state.currentPageIndex == 0
                            ? "Continue"
                            : "Get Started",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
