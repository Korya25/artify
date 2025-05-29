import 'package:artify/core/const/app_assets.dart';
import 'package:artify/core/resources/app_colors.dart';
import 'package:artify/features/onboarding/presentation/widgets/dot_indictor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingBottom extends StatelessWidget {
  final PageController pageController;
  final int count;
  final VoidCallback onNext;

  const OnboardingBottom({
    super.key,
    required this.pageController,
    required this.count,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DotIndictor(pageController: pageController, count: count),
          GestureDetector(
            onTap: onNext,
            child: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.circular(56),
              ),
              padding: const EdgeInsets.all(16),
              child: SvgPicture.asset(
                AppIconSvgs.forwardIcon,
                height: 24,
                width: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
