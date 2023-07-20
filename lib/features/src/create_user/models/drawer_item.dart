enum DrawerItemId {
  dashboard,
  report,
  userManagement,
  branchAndInventory,
  invoices,
  contacts,
  promotion,
  settings
}

class DrawerItem {
  const DrawerItem({
    required this.id,
    required this.title,
    required this.icon,
    required this.hasTrailing,
  });

  final DrawerItemId id;
  final String title;
  final String icon;
  final bool hasTrailing;
}
