import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/drawer_item.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';

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

class AdaptiveTextButton extends StatelessWidget {
  const AdaptiveTextButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.noPadding = false,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onPressed;
  final bool noPadding;

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoButton(
        padding: noPadding ? EdgeInsets.zero : null,
        onPressed: onPressed == null
            ? null
            : () {
                HapticFeedback.lightImpact();
                onPressed?.call();
              },
        child: DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: onPressed == null
                    ? Colors.grey[300]
                    : Theme.of(context).brightness == Brightness.dark
                        ? CupertinoColors.white
                        : AppColors.kFontColorBlack,
              ),
          child: child,
        ),
      );
    } else {
      return TextButton(
        onPressed: onPressed,
        child: child,
      );
    }
  }
}
