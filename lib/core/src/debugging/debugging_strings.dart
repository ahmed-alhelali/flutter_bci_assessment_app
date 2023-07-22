import 'package:flutter/foundation.dart' show immutable;

@immutable
class DebuggingStrings {
  //api services [Exceptions]
  static const String exceptionFromFetchUsers =
      "❌ - Request Exception [from Fetch-Users] - ";
  static const String exceptionFromCreateUser =
      "❌ - Request Exception [from Create-User] - ";

  //api services [Successes]
  static const String successFromFetchUsers =
      "✅ - Request Success [from Fetch-Users] - ";
  static const String successFromCreateUser =
      "✅ - Request Success [from Create-User] - ";


  const DebuggingStrings._();
}
