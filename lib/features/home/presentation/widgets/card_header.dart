import 'package:artify/core/const/app_assets.dart';
import 'package:artify/core/const/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 320,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Top Collection 🔥',
            style: AppTextStyle.skipButton.copyWith(fontSize: 18),
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(AppIconSvgs.more, height: 24, width: 24),
          ),
        ],
      ),
    );
  }
}
