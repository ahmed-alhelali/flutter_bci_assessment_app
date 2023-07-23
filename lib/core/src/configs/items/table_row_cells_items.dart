import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';
import 'package:google_fonts/google_fonts.dart';

List<DataCell> tableRowCellsItems(User user) => [
      DataCell(
        Text(
          user.name.toString(),
          style: GoogleFonts.inter(
            color: AppColors.kFontColorBlack,
            fontSize: 14,
          ),
        ),
      ),
      DataCell(
        Text(
          user.email.toString(),
          style: GoogleFonts.inter(
            color: AppColors.kFontColorBlack,
            fontSize: 14,
          ),
        ),
      ),
      DataCell(
        Text(
          user.phone.toString(),
          style: GoogleFonts.inter(
            color: AppColors.kFontColorBlack,
            fontSize: 14,
          ),
        ),
      ),
      DataCell(
        Text(
          user.branch.toString(),
          style: GoogleFonts.inter(
            color: AppColors.kFontColorBlack,
            fontSize: 14,
          ),
        ),
      ),
      DataCell(
        Text(
          user.age.toString(),
          style: GoogleFonts.inter(
            color: AppColors.kFontColorBlack,
            fontSize: 14,
          ),
        ),
      ),
      DataCell(
        Text(
          user.age.toString(),
          style: GoogleFonts.inter(
            color: AppColors.kFontColorBlack,
            fontSize: 14,
          ),
        ),
      ),
      DataCell(
        Text(
          user.address.toString(),
          style: GoogleFonts.inter(
            color: AppColors.kFontColorBlack,
            fontSize: 14,
          ),
        ),
      ),
      DataCell(
        Text(
          user.city.toString(),
          style: GoogleFonts.inter(
            color: AppColors.kFontColorBlack,
            fontSize: 14,
          ),
        ),
      ),
      DataCell(
        Text(
          user.country.toString(),
          style: GoogleFonts.inter(
            color: AppColors.kFontColorBlack,
            fontSize: 14,
          ),
        ),
      ),
    ];
