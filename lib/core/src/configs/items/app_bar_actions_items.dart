import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';
import 'package:google_fonts/google_fonts.dart';

List<Widget> appBarActionsItems = [
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: IconButton(
      icon: const AppIcon(
        icon: AppIcons.kNotificationsIcon,
      ),
      onPressed: () {},
    ),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0),
    child: IconButton(
      icon: const AppIcon(
        icon: AppIcons.kInfoIcon,
      ),
      onPressed: () {},
    ),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Row(
      children: [
        Text(
          AppStrings.superAdmin,
          style: GoogleFonts.inter(
            color: AppColors.kFontColorBlack,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        AppGaps.kGap4,
        const AppIcon(
          icon: AppIcons.kArrowDownIcon,
        )
      ],
    ),
  ),
];
