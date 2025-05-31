import 'package:artify/core/const/app_assets.dart';
import 'package:artify/core/resources/app_text_style.dart';
import 'package:artify/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BidButton extends StatelessWidget {
  final VoidCallback onPressed;

  const BidButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 37,
        width: 122,
        decoration: BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIconSvgs.judge, width: 20),
            const SizedBox(width: 8),
            Text(
              'Place Bid',
              style: AppTextStyle.skipButton.copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
