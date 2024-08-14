import 'dart:async';
import 'package:flutter/material.dart';
import 'package:servicemen_listing/core/utils/app_assetes/app_images.dart';

class HomeBanners extends StatefulWidget {
  HomeBanners({super.key});

  @override
  _HomeBannersState createState() => _HomeBannersState();
}

class _HomeBannersState extends State<HomeBanners> {
  final List<String> banners = [
    AppImages.bannerOne,
    AppImages.bannerTwo,
    AppImages.bannerThree,
  ];

  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startBannerTimer();
  }

  void _startBannerTimer() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % banners.length;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: Image.asset(
              banners[_currentIndex],
              key: ValueKey<int>(_currentIndex),
              fit: BoxFit.contain,
              width: double.infinity,
              height: 160,
            ),
          ),
        ],
      ),
    );
  }
}
