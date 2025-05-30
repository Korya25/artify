import 'package:artify/core/const/app_assets.dart';
import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              AppImages.banner,
              height: 117,
              width: 311,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 100,
            top: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(AppImages.person, height: 102, width: 102),
            ),
          ),
        ],
      ),
    );
  }
}
