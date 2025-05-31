import 'package:artify/core/const/app_assets.dart';
import 'package:artify/core/resources/app_text_style.dart';
import 'package:artify/core/resources/app_colors.dart';
import 'package:artify/features/home/presentation/widgets/bid_button.dart';
import 'package:artify/features/home/presentation/widgets/detail_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              children: const [
                Gap(40),
                DetailHeader(title: 'Detail'),
                Gap(30),
                DetailViewBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailViewBody extends StatelessWidget {
  const DetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Product Image
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset(
            AppImages.object2,
            height: 329,
            width: 320,
            fit: BoxFit.cover,
          ),
        ),
        const Gap(16),

        // ID
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '#14415',
            style: AppTextStyle.skipButton.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.green,
            ),
          ),
        ),
        const Gap(12),

        // Name + Crown Icon
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hypebest Apes B',
              style: AppTextStyle.skipButton.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SvgPicture.asset(AppIconSvgs.crown, width: 24, height: 24),
          ],
        ),
        const Gap(12),

        // Sold Count + Timer
        Row(
          children: [
            Text(
              '125 Sold',
              style: AppTextStyle.skipButton.copyWith(
                fontSize: 10,
                fontWeight: FontWeight.w300,
                color: AppColors.grey,
              ),
            ),
            const Gap(12),
            SvgPicture.asset(
              AppIconSvgs.clock,
              width: 14,
              height: 14,
              color: AppColors.grey,
            ),
            const Gap(6),
            Text(
              '1h 23m 32s',
              style: AppTextStyle.skipButton.copyWith(
                fontSize: 10,
                fontWeight: FontWeight.w300,
                color: AppColors.grey,
              ),
            ),
          ],
        ),
        const Divider(height: 32, thickness: 1, color: AppColors.grey),

        // Description Title First
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Description',
            style: AppTextStyle.skipButton.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
          ),
        ),
        const Gap(8),

        // Description Text
        Text(
          'Each Apes NFT is a unique masterpiece, and crafted by artists around the globe.',
          style: AppTextStyle.skipButton.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w100,
            color: AppColors.grey,
          ),
        ),
        Gap(16),
        // Price + Bid Button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: AppTextStyle.skipButton.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: AppColors.grey,
                  ),
                ),
                Text(
                  '2.23 ETH',
                  style: AppTextStyle.skipButton.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
            BidButton(onPressed: () {}),
          ],
        ),
        const Gap(30),
      ],
    );
  }
}
