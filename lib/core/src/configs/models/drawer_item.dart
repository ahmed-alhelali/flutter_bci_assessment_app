import 'package:flutter_bci_assessment_app/core/src/configs/enums/drawer_item_id.dart';

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
