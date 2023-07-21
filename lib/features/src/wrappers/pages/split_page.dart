import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';

class SplitPage extends StatelessWidget {
  const SplitPage({
    Key? key,
    required this.appDrawer,
    required this.appContent,
    this.appMobileBreakpoint = AppBreakPoints.appMobileBreakPoint,
    this.appTabletBreakPoint = AppBreakPoints.appTabletBreakPoint,
    this.appDrawerWidth = AppBreakPoints.appDrawerWidth,
  }) : super(key: key);
  final Widget appDrawer;
  final Widget appContent;
  final double appMobileBreakpoint;
  final double appTabletBreakPoint;
  final double appDrawerWidth;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > appMobileBreakpoint) {
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
