import 'package:artify/core/resources/app_colors.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle onboardingTitle = GoogleFonts.spaceGrotesk(
    fontWeight: FontWeight.bold,
    fontSize: 36,
    color: AppColors.black,
  );
  static TextStyle onboardingSubtitle = GoogleFonts.spaceGrotesk(
    fontWeight: FontWeight.w100,
    fontSize: 16,
    color: AppColors.grey,
  );
  static TextStyle skipButton = GoogleFonts.spaceGrotesk(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.black,
  );
}
