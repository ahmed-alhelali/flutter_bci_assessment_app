import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
    required this.icon,
    this.color,
    this.height,
    this.width,
  });

  final String icon;
  final Color? color;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 24,
      height: height ?? 24,
      alignment: Alignment.center,
      child: SvgPicture.asset(
        icon,
        width: width ?? 24,
        height: height ?? 24,
      ),
    );
  }
}
