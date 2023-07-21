import 'package:flutter_bci_assessment_app/core/core.dart';
import 'package:flutter_bci_assessment_app/features/src/configs/app_strings.dart';
import 'package:flutter_bci_assessment_app/features/src/models/drawer_item.dart';
import 'package:flutter_bci_assessment_app/features/src/enums/drawer_item_id.dart';

List<DrawerItem> drawerItems = [
  const DrawerItem(
    id: DrawerItemId.dashboard,
    title: AppStrings.dashboard,
    icon: AppIcons.kDashboardIcon,
    hasTrailing: false,
  ),
  const DrawerItem(
    id: DrawerItemId.report,
    title: AppStrings.report,
    icon: AppIcons.kReportIcon,
    hasTrailing: true,
  ),
  const DrawerItem(
    id: DrawerItemId.userManagement,
    title: AppStrings.userManagement,
    icon: AppIcons.kReportIcon,
    // icon: AppIcons.kUserIcon,
    hasTrailing: true,
  ),
  const DrawerItem(
    id: DrawerItemId.branchAndInventory,
    title: AppStrings.branchAndInventory,
    icon: AppIcons.kBranchIcon,
    hasTrailing: true,
  ),
  const DrawerItem(
    id: DrawerItemId.invoices,
    title: AppStrings.invoices,
    icon: AppIcons.kInvoiceIcon,
    hasTrailing: true,
  ),
  const DrawerItem(
    id: DrawerItemId.contacts,
    title: AppStrings.contacts,
    icon: AppIcons.kContactIcon,
    hasTrailing: true,
  ),
  const DrawerItem(
    id: DrawerItemId.promotion,
    title: AppStrings.promotion,
    icon: AppIcons.kPromotionIcon,
    hasTrailing: false,
  ),
  const DrawerItem(
    id: DrawerItemId.settings,
    title: AppStrings.settings,
    icon: AppIcons.kSettingsIcon,
    hasTrailing: true,
  ),
];
