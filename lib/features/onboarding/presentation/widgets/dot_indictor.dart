import 'package:artify/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotIndictor extends StatelessWidget {
  const DotIndictor({
    super.key,
    required this.pageController,
    required this.count,
  });
  final PageController pageController;
  final int count;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: count,
      axisDirection: Axis.horizontal,
      effect: CustomizableEffect(
        activeDotDecoration: DotDecoration(
          height: 10,
          width: 10,
          color: AppColors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        dotDecoration: DotDecoration(
          height: 6,
          width: 6,
          color: AppColors.black.withAlpha(120),
          borderRadius: BorderRadius.circular(8),
        ),
        spacing: 6,
      ),
    );
  }
}
