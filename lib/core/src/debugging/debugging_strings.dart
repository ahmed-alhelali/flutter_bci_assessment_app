import 'package:flutter/foundation.dart' show immutable;

@immutable
class DebuggingStrings {
  //api services [Exceptions]
  static const String exceptionFromFetchUsers =
      "❌ - Request Exception [from Fetch-Users] - ";

  //api services [Successes]
  static const String successFromFetchUsers =
      "✅ - Request Success [from Fetch-Users] - ";

  const DebuggingStrings._();
}
