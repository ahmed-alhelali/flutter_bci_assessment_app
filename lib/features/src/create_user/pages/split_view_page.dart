import 'package:flutter/material.dart';

class SplitViewPage extends StatelessWidget {
  const SplitViewPage({
    Key? key,
    required this.menu,
    required this.content,
    this.breakpoint = 800,
    this.menuWidth = 279,
  }) : super(key: key);
  final Widget menu;
  final Widget content;
  final double breakpoint;
  final double menuWidth;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > breakpoint) {
      return Row(
        children: [
          SizedBox(
            width: menuWidth,
            child: menu,
          ),
          Expanded(child: content),
        ],
      );
    } else {
      return Scaffold(
        body: content,
        drawer: SizedBox(
          width: menuWidth,
          child: Drawer(
            child: menu,
          ),
        ),
      );
    }
  }
}
