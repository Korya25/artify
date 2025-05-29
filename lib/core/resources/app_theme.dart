import 'package:artify/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData theme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.scaffoldBackground,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.spaceGrotesk(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: AppColors.black,
        ),
      ),
    );
  }
}
