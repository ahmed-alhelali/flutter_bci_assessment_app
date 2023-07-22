import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/src/configs/strings/app_strings.dart';
import 'package:flutter_bci_assessment_app/core/src/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

List<DataColumn> tableColumnsItems = [
  DataColumn(
    label: Text(
      AppStrings.name,
      style: GoogleFonts.inter(
        color: AppColors.kFontColorBlack,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  DataColumn(
    label: Text(
      AppStrings.email,
      style: GoogleFonts.inter(
        color: AppColors.kFontColorBlack,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  DataColumn(
    label: Text(
      AppStrings.phoneNumber,
      style: GoogleFonts.inter(
        color: AppColors.kFontColorBlack,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  DataColumn(
    label: Text(
      AppStrings.branch,
      style: GoogleFonts.inter(
        color: AppColors.kFontColorBlack,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  DataColumn(
    label: Text(
      AppStrings.account,
      style: GoogleFonts.inter(
        color: AppColors.kFontColorBlack,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  DataColumn(
    label: Text(
      AppStrings.age,
      style: GoogleFonts.inter(
        color: AppColors.kFontColorBlack,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  DataColumn(
    label: Text(
      AppStrings.address,
      style: GoogleFonts.inter(
        color: AppColors.kFontColorBlack,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  DataColumn(
    label: Text(
      AppStrings.city,
      style: GoogleFonts.inter(
        color: AppColors.kFontColorBlack,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  DataColumn(
    label: Text(
      AppStrings.country,
      style: GoogleFonts.inter(
        color: AppColors.kFontColorBlack,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
];
