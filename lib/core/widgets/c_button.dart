import 'package:flutter/material.dart';
import 'package:servicemen_listing/core/utils/theme/app_colors.dart';

class CButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double? width;
  final double? height;
  final Color color;
  final double radius;
  const CButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.width,
    this.height,
    this.color = AppColors.buttonColor,
    this.radius = 8,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      highlightElevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      color: color,
      minWidth: width,
      height: height,
      onPressed: onPressed,
      child: child,
    );
  }
}
