import 'package:artify/core/const/app_assets.dart';
import 'package:artify/core/resources/app_text_style.dart';
import 'package:artify/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WatchlistSection extends StatelessWidget {
  const WatchlistSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 37,
          width: 231,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppColors.green,
          ),
          padding: const EdgeInsets.only(left: 30, top: 7),
          child: Text(
            '+  Watchlist',
            style: AppTextStyle.skipButton.copyWith(
              fontSize: 14,
              color: AppColors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SvgPicture.asset(AppIconSvgs.more, height: 24, width: 24),
      ],
    );
  }
}
