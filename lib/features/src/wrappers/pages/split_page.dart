import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplitPage extends ConsumerWidget {
  const SplitPage({
    Key? key,
    required this.appDrawer,
    required this.appContent,
    this.appBreakPoint = AppBreakPoints.appBreakPoint,
    this.appDrawerWidth = AppBreakPoints.appDrawerWidth,
  }) : super(key: key);
  final Widget appDrawer;
  final Widget appContent;
  final double appBreakPoint;
  final double appDrawerWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final selectedPageBuilder = ref.watch(selectedPageBuilderProvider);
    ref.listen<bool>(
      isLoadingProvider,
      (_, isLoading) {
        if (isLoading) {
          LoadingWidget.instance().show(
            context: context,
          );
        } else {
          LoadingWidget.instance().hide();
        }
      },
    );

    if (screenWidth > appBreakPoint) {
      return Row(
        children: [
          SizedBox(
            width: appDrawerWidth,
            child: appDrawer,
          ),
          Expanded(
            child: appContent,
          ),
        ],
      );
    } else {
      return Scaffold(
        body: appContent,
        drawer: SizedBox(
          width: appDrawerWidth,
          child: Drawer(
            child: appDrawer,
          ),
        ),
      );
    }
  }
}
