import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:servicemen_listing/core/widgets/c_network_image.dart';
import 'package:servicemen_listing/core/widgets/c_shimmer.dart';
import 'package:servicemen_listing/features/banners/application/banners_bloc.dart';

class HomeBanners extends StatefulWidget {
  const HomeBanners({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeBannersState createState() => _HomeBannersState();
}

class _HomeBannersState extends State<HomeBanners> {
  int _currentIndex = 0;
  Timer? _timer;

  void _startBannerTimer() {
    final banners = context.read<BannersBloc>().state.banners;

    if (banners.isEmpty) return;

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
    return BlocConsumer<BannersBloc, BannersState>(
      listener: (context, state) {
        if (state.banners.isNotEmpty && _timer == null) {
          _startBannerTimer();
        }
      },
      builder: (context, state) {
        return Container(
          height: 140,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: state.fetchLoading && state.banners.isEmpty
              ? const CShimmer()
              : Stack(
                  children: [
                    if (state.banners.isNotEmpty)
                      AnimatedSwitcher(
                        duration: const Duration(seconds: 1),
                        transitionBuilder:
                            (Widget child, Animation<double> animation) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CNetworkImage(
                            imageUrl: state.banners[_currentIndex].image,
                            key: ValueKey<int>(_currentIndex),
                            width: double.infinity,
                            height: 160,
                          ),
                        ),
                      ),
                  ],
                ),
        );
      },
    );
  }
}
