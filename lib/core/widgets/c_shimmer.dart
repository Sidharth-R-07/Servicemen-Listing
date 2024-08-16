import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CShimmer extends StatelessWidget {
  final double width;
  final double height;
  const CShimmer({super.key, this.width = 80, this.height = 80});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[200]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        color: Colors.white,
      ),
    );
  }
}
