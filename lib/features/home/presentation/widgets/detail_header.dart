import 'package:artify/core/const/app_assets.dart';
import 'package:artify/core/const/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            context.pop();
          },
          child: SvgPicture.asset(
            AppIconSvgs.arrowBackIOs,
            height: 24,
            width: 24,
          ),
        ),
        Text(title, style: AppTextStyle.skipButton.copyWith(fontSize: 18)),
        const SizedBox(width: 24), // Placeholder for spacing
      ],
    );
  }
}
