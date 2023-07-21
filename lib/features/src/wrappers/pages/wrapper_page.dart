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
          Row(
            children: [
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
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    AppGaps.kGap4,
                    const AppIcon(
                      icon: AppIcons.kArrowDownIcon,
                    )
                  ],
                ),
              ),
            ],
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
