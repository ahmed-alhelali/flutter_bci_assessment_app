import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'enums/theme_type.dart';

class AppTheme {
  const AppTheme(this.type);

  final ThemeType type;

  ThemeData get mainTheme => ThemeData(
        fontFamily: GoogleFonts.inter().fontFamily,
        scaffoldBackgroundColor: AppColors.kScaffoldBackgroundColor,
        primaryColorLight: AppColors.kPrimaryColorMain,
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          color: AppColors.kPrimaryColorSecondary,
          titleTextStyle: GoogleFonts.inter(
            color: AppColors.kFontColorBlack,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          centerTitle: false,
          elevation: 0.0,
          shape: const Border(
            top: BorderSide(
              color: AppColors.kBorderColorMain,
              width: 1,
            ),
            bottom: BorderSide(
              color: AppColors.kBorderColorMain,
              width: 1,
            ),
            left: BorderSide(
              color: AppColors.kBorderColorMain,
              width: 1,
            ),
          ),
        ),
        textTheme: TextTheme(
          bodySmall: GoogleFonts.inter(
            color: AppColors.kFontColorBlack,
            fontSize: 12,
          ),
          bodyMedium: GoogleFonts.inter(
            color: AppColors.kFontColorBlack,
            fontSize: 16,
          ),
          bodyLarge: GoogleFonts.inter(
            color: AppColors.kFontColorBlack,
            fontSize: 20,
          ),
          titleMedium: GoogleFonts.inter(
            color: AppColors.kFontColorBlack,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          titleLarge: GoogleFonts.inter(
            color: AppColors.kFontColorBlack,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          secondary: AppColors.kSecondaryColorMain,
          primary: AppColors.kPrimaryColorSecondary,
          seedColor: AppColors.kPrimaryColorMain,
        ),
        useMaterial3: false,
      );

  ThemeData getTheme() {
    switch (type) {
      case ThemeType.light:
        return mainTheme;
      default:
        return mainTheme;
    }
  }
}
