import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';

class WrapperPage extends StatelessWidget {
  const WrapperPage({
    Key? key,
    this.body,
  }) : super(key: key);

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    final ancestorScaffold = Scaffold.maybeOf(context);
    final hasDrawer = ancestorScaffold != null && ancestorScaffold.hasDrawer;
    return Scaffold(
      appBar: AppBar(
        leading: hasDrawer
            ? IconButton(
                icon: const AppIcon(
                  icon: AppIcons.kDrawerIcon,
                ),
                onPressed:
                    hasDrawer ? () => ancestorScaffold.openDrawer() : null,
              )
            : null,
        title: const Text(
          AppStrings.userManagement,
        ),
        actions: [
          context.screenWidth <= 520
              ? appBarActionsItems.last
              : Row(
                  children: appBarActionsItems.map((item) => item).toList(),
                ),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: body,
      ),
    );
  }
}
