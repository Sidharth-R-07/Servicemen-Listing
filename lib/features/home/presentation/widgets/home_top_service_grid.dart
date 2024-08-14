import 'package:flutter/material.dart';
import 'package:servicemen_listing/features/top_services/domain/data/top_service_list.dart';
import 'package:servicemen_listing/features/top_services/presentation/widgets/top_service_frame.dart';

class HomeTopServiceGrid extends StatelessWidget {
  const HomeTopServiceGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      sliver: SliverGrid.builder(
        itemCount: topServiceList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
            mainAxisExtent: 115),
        itemBuilder: (context, index) =>
            TopServiceFrame(topServiceModel: topServiceList[index]),
      ),
    );
  }
}
