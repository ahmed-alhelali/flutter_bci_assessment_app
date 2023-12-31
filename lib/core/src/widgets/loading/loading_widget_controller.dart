import 'package:flutter/material.dart';

typedef DisposeLoadingWidget = bool Function();
typedef UpdateLoadingWidget = bool Function(String text, Widget widget);

@immutable
class LoadingWidgetController {
  final DisposeLoadingWidget dispose;
  final UpdateLoadingWidget update;

  const LoadingWidgetController({
    required this.dispose,
    required this.update,
  });
}
