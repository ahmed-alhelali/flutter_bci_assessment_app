import 'dart:developer' as devtools;

extension DebuggingExtension on Object {
  void log() => devtools.log(toString());
}
