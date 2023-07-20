import 'package:flutter_bci_assessment_app/core/core.dart';

import '../models/drawer_item.dart';

List<DrawerItem> drawerItems = [
  const DrawerItem(
    id: DrawerItemId.dashboard,
    title: 'Dashboard',
    icon: AppIcons.kDashboardIcon,
    hasTrailing: false,
  ),
  const DrawerItem(
    id: DrawerItemId.report,
    title: 'Report',
    icon: AppIcons.kReportIcon,
    hasTrailing: true,
  ),
  const DrawerItem(
    id: DrawerItemId.userManagement,
    title: 'User Management',
    icon: AppIcons.kReportIcon,
    // icon: AppIcons.kUserIcon,
    hasTrailing: true,
  ),
  const DrawerItem(
    id: DrawerItemId.branchAndInventory,
    title: 'Branch & Inventory',
    icon: AppIcons.kBranchIcon,
    hasTrailing: true,
  ),
  const DrawerItem(
    id: DrawerItemId.invoices,
    title: 'Invoices',
    icon: AppIcons.kInvoiceIcon,
    hasTrailing: true,
  ),
  const DrawerItem(
    id: DrawerItemId.contacts,
    title: 'Contacts',
    icon: AppIcons.kContactIcon,
    hasTrailing: true,
  ),
  const DrawerItem(
    id: DrawerItemId.promotion,
    title: 'Promotion',
    icon: AppIcons.kPromotionIcon,
    hasTrailing: false,
  ),
  const DrawerItem(
    id: DrawerItemId.settings,
    title: 'Settings',
    icon: AppIcons.kSettingsIcon,
    hasTrailing: true,
  ),
];
