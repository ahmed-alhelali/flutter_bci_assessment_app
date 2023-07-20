import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';

import '../configs/drawer_items.dart';
import 'drawer_list_item_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ancestorScaffold = Scaffold.maybeOf(context);

    final hasDrawer = ancestorScaffold != null && ancestorScaffold.hasDrawer;
    return Scaffold(
      backgroundColor: AppColors.kPrimaryColorMain,
      appBar: AppBar(
        title: const Text(
          "TestX",
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: IconButton(
              icon: const AppIcon(
                icon: AppIcons.kDrawerIcon,
              ),
              onPressed:
                  hasDrawer ? () => ancestorScaffold.closeDrawer() : null,
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: [
          for (final item in drawerItems)
            DrawerListItem(
              item: item,
              hasTrailing: item.hasTrailing,
              onPressed: () {
                // Scaffold.of(context).closeDrawer();
              },
            ),
        ],
      ),
    );
  }
}
