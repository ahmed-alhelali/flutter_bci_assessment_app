import 'package:flutter_bci_assessment_app/core/src/debugging/debugging_strings.dart';
import 'package:flutter_bci_assessment_app/core/src/typedefs/typedefs.dart';

class DebuggingStringsCollectors {
  static String fetchUserExceptionStringsCollector({
    required ErrorMessage errorMessage,
  }) {
    return '${DebuggingStrings.exceptionFromFetchUsers} $errorMessage';
  }

  static String fetchUserSuccessStringsCollector({
    required ReturnedResponseBody returnedResponseBody,
    CurrentPage? currentPage,
  }) {
    return '${DebuggingStrings.successFromFetchUsers} ${currentPage != null ? "Page #$currentPage" : ''} $returnedResponseBody';
  }
}
