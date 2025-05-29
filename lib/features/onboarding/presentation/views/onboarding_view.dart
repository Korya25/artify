import 'package:artify/core/const/app_assets.dart';
import 'package:artify/core/resources/app_routes.dart';
import 'package:artify/features/onboarding/presentation/widgets/onboarding_bottom.dart';
import 'package:artify/features/onboarding/presentation/widgets/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:artify/core/const/app_string.dart';
import 'package:go_router/go_router.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  final int pageCount = 3;

  @override
  @override
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void _goToHomePage() {
    context.goNamed(AppRoutes.home);
  }

  void _goToNextPage() {
    if (_pageController.page != null &&
        _pageController.page!.round() < pageCount - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _goToHomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Page View
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                OnboardingPage(
                  title: AppString.titleOnboarding1,
                  subTitle: AppString.subTitleOnboarding1,
                  goToHomePage: _goToHomePage,
                  imagePath: AppImages.onboardingImage1,
                ),
                OnboardingPage(
                  title: AppString.titleOnboarding2,
                  subTitle: AppString.subTitleOnboarding2,
                  goToHomePage: _goToHomePage,
                  imagePath: AppImages.onboardingImage2,
                ),
                OnboardingPage(
                  title: AppString.titleOnboarding3,
                  subTitle: AppString.subTitleOnboarding3,
                  imagePath: AppImages.onboardingImage3,
                  goToHomePage: _goToHomePage,
                ),
              ],
            ),
          ),

          // Bottom Controls
          OnboardingBottom(
            pageController: _pageController,
            count: pageCount,
            onNext: _goToNextPage,
          ),
        ],
      ),
    );
  }
}
