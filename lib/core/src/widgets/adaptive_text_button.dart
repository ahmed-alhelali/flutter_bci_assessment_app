import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bci_assessment_app/core/src/theme/app_colors.dart';

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
