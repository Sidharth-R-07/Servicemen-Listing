import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:servicemen_listing/features/profile/presentation/widgets/profile_frame.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Gap(size.height * 0.15),
        ),
        const SliverToBoxAdapter(
          child: ProfileFrame(),
        )
      ],
    );
  }
}
