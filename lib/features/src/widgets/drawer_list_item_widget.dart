import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';
import 'package:flutter_bci_assessment_app/features/src/models/drawer_item.dart';

class DrawerListItem extends StatelessWidget {
  const DrawerListItem({
    super.key,
    required this.item,
    this.hasTrailing,
    this.onPressed,
  });

  final DrawerItem item;
  final bool? hasTrailing;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: AdaptiveTextButton(
        noPadding: true,
        onPressed: onPressed,
        child: Row(
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: AppIcon(icon: item.icon),
            ),
            const Spacer(),
            Expanded(
              flex: 6,
              child: Row(
                children: [
                  Text(
                    item.title,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            if (hasTrailing == true)
              const AppIcon(
                icon: AppIcons.kArrowDownIcon,
              )
            else
              const Offstage()
          ],
        ),
      ),
    );
  }
}
