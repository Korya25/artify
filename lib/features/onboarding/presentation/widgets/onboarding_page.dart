import 'package:artify/features/onboarding/presentation/widgets/onboarding_header.dart';
import 'package:artify/features/onboarding/presentation/widgets/title_subtitle.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final String title;
  final String subTitle;
  final Function() goToHomePage;
  final String imagePath;

  const OnboardingPage({
    super.key,
    required this.title,
    required this.subTitle,
    required this.goToHomePage,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top Image with Skip Button
        OnboardingHeader(onSkip: goToHomePage, imagePath: imagePath),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),

          child: TitleSubtitle(title: title, subTitle: subTitle),
        ),
      ],
    );
  }
}
