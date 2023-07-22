import 'package:flutter/foundation.dart' show immutable;

typedef DisposeLoadingWidget = bool Function();
typedef UpdateLoadingWidget = bool Function(String text);

@immutable
class LoadingWidgetController {
  final DisposeLoadingWidget dispose;
  final UpdateLoadingWidget update;

  const LoadingWidgetController({
    required this.dispose,
    required this.update,
  });
}
