import 'package:flutter/material.dart';

class AdaptiveText extends StatelessWidget {
  const AdaptiveText({
    super.key,
    required this.data,
    required this.style,
  });

  final String data;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return switch (Theme.of(context).platform) {
      TargetPlatform.android || TargetPlatform.iOS => Text(data, style: style),
      _ => SelectableText(data, style: style)
    };
  }
}
