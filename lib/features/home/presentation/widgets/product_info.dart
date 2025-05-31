import 'package:artify/core/const/app_assets.dart';
import 'package:artify/core/resources/app_text_style.dart';
import 'package:artify/core/resources/app_colors.dart';
import 'package:artify/features/home/presentation/widgets/bid_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductInfo extends StatelessWidget {
  final String title;
  final String timeLeft;
  final String bid;
  final VoidCallback onBidPressed;

  const ProductInfo({
    super.key,
    required this.title,
    required this.timeLeft,
    required this.bid,
    required this.onBidPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        children: [
          // Title and Time
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextStyle.skipButton.copyWith(fontSize: 16),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Ends in',
                    style: AppTextStyle.skipButton.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                      color: AppColors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIconSvgs.clock,
                        width: 14,
                        height: 14,
                      ),
                      const SizedBox(width: 4),
                      Text(timeLeft, style: AppTextStyle.skipButton),
                    ],
                  ),
                ],
              ),
            ],
          ),

          const Divider(height: 24, thickness: 1, color: AppColors.grey),

          // Bid Info & Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Highest Bid Today',
                    style: AppTextStyle.skipButton.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      color: AppColors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(AppIconSvgs.darkEthereum, width: 14),
                      const SizedBox(width: 4),
                      Text(bid, style: AppTextStyle.skipButton),
                    ],
                  ),
                ],
              ),
              BidButton(onPressed: onBidPressed),
            ],
          ),
        ],
      ),
    );
  }
}
