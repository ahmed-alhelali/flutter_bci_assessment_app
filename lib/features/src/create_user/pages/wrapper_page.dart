import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';

class WrapperPage extends StatelessWidget {
  const WrapperPage({
    Key? key,
    required this.title,
    this.actions = const [],
    this.body,
    this.floatingActionButton,
  }) : super(key: key);
  final String title;
  final List<Widget> actions;
  final Widget? body;
  final Widget? floatingActionButton;

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
        title: Text(title),
        actions: actions,
      ),
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}
