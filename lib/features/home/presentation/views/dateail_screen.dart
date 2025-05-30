import 'package:artify/core/const/app_assets.dart';
import 'package:artify/core/const/app_text_style.dart';
import 'package:artify/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Darlene Roberston',
                style: AppTextStyle.skipButton.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SvgPicture.asset(AppIconSvgs.varfiyIcon, width: 14, height: 14),
            ],
          ),
          const Gap(8),
          Text(
            'Each Apes NFT is a unique masterpiece, and crafted by artists around the globe.',
            textAlign: TextAlign.center,
            style: AppTextStyle.skipButton.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w100,
              color: AppColors.grey,
            ),
          ),
          const Gap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              StatColumn(value: '10.0K', label: 'Items'),
              SizedBox(
                height: 33,
                child: VerticalDivider(color: AppColors.black),
              ),
              StatColumnWithIcon(value: '689.10K', label: 'Volume'),
              SizedBox(
                height: 33,
                child: VerticalDivider(color: AppColors.black),
              ),
              StatColumnWithIcon(value: '13.99', label: 'Floor Price'),
            ],
          ),
        ],
      ),
    );
  }
}

class StatColumn extends StatelessWidget {
  final String value;
  final String label;

  const StatColumn({super.key, required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: AppTextStyle.skipButton.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          label,
          style: AppTextStyle.skipButton.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}

class StatColumnWithIcon extends StatelessWidget {
  final String value;
  final String label;

  const StatColumnWithIcon({
    super.key,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          spacing: 5,
          children: [
            SvgPicture.asset(AppIconSvgs.darkEthereum, height: 14, width: 8),
            Text(
              value,
              style: AppTextStyle.skipButton.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Text(
          label,
          style: AppTextStyle.skipButton.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}
