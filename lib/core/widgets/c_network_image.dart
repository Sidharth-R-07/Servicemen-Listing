import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:servicemen_listing/core/widgets/c_shimmer.dart';

class CNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  const CNetworkImage(
      {super.key, required this.imageUrl, this.height = 70, this.width = 70});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      placeholder: (context, url) => const CShimmer(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
