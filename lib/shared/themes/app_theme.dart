import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moteis/shared/constants/app_colors.dart';

class AppTheme {
  static TextTheme textTheme() {
    return TextTheme(
      bodyLarge: GoogleFonts.krub(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.gray,
      ),
      bodyMedium: GoogleFonts.krub(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.gray,
      ),
      bodySmall: GoogleFonts.krub(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.gray,
      ),
      titleLarge: GoogleFonts.krub(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: AppColors.gray,
      ),
      titleMedium: GoogleFonts.krub(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColors.gray,
      ),
      titleSmall: GoogleFonts.krub(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColors.gray,
      ),
      displayLarge: GoogleFonts.krub(
        fontSize: 57,
        fontWeight: FontWeight.bold,
        color: AppColors.gray,
      ),
      displayMedium: GoogleFonts.krub(
        fontSize: 45,
        fontWeight: FontWeight.bold,
        color: AppColors.gray,
      ),
      displaySmall: GoogleFonts.krub(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        color: AppColors.gray,
      ),
      headlineLarge: GoogleFonts.krub(),
      headlineMedium: GoogleFonts.krub(),
      headlineSmall: GoogleFonts.krub(),
      labelLarge: GoogleFonts.krub(),
      labelMedium: GoogleFonts.krub(),
      labelSmall: GoogleFonts.krub(),
    );
  }
}
