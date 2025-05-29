import 'package:artify/core/const/app_string.dart';
import 'package:artify/core/const/app_text_style.dart';
import 'package:artify/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderHomeTitle extends StatelessWidget {
  const HeaderHomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: AppTextStyle.onboardingTitle.copyWith(fontSize: 24),
        children: [
          TextSpan(text: AppString.homeTitle1),
          TextSpan(text: ' '),
          TextSpan(
            text: AppString.homeTitle2,
            style: AppTextStyle.onboardingTitle.copyWith(
              color: AppColors.green,
              fontSize: 24,
            ),
          ),
          TextSpan(text: ' '),

          TextSpan(text: AppString.homeTitle3),
        ],
      ),
    );
  }
}
