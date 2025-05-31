import 'package:artify/core/const/app_assets.dart';
import 'package:artify/core/resources/app_text_style.dart';
import 'package:artify/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class BestArtistCard extends StatelessWidget {
  const BestArtistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 320,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best Artist',
                style: AppTextStyle.skipButton.copyWith(fontSize: 18),
              ),
              SvgPicture.asset(AppIconSvgs.more, height: 24, width: 24),
            ],
          ),
          const Gap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(44),
                    child: Image.asset(AppImages.person, height: 40, width: 40),
                  ),
                  const Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Darlene Robertson',
                        style: AppTextStyle.skipButton.copyWith(fontSize: 14),
                      ),
                      Text(
                        '125k Followers',
                        style: AppTextStyle.skipButton.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 37,
                width: 91,
                decoration: BoxDecoration(
                  color: AppColors.green,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text(
                    'Follow',
                    style: AppTextStyle.skipButton.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
