import 'dart:convert';

import 'package:flutter_bci_assessment_app/core/src/debugging/debugging_extension.dart';
import 'package:flutter_bci_assessment_app/core/src/debugging/debugging_strings_collectors.dart';
import 'package:flutter_bci_assessment_app/core/src/models/response.dart';
import 'package:flutter_bci_assessment_app/core/src/models/user.dart';
import 'package:flutter_bci_assessment_app/core/src/typedefs/typedefs.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  ApiServices();

  Future<Response?> fetchUsers({CurrentPage? currentPage}) async {
    final url = Uri.https(
      'bci.net.sa',
      '/api/show_users',
      {
        'page': currentPage.toString(),
      },
    );

    try {
      final res = await http.get(url);
      if (res.statusCode == 200) {
        final String debuggingValue =
            DebuggingStringsCollectors.fetchUserSuccessStringsCollector(
          returnedResponseBody: res.body,
          currentPage: currentPage,
        );

        debuggingValue.log();

        Map<String, dynamic> jsonData = json.decode(res.body);
        final data = jsonData['users'];

        Response response = Response.fromJson(data);

        return response;
      } else {
        final String debuggingValue =
            DebuggingStringsCollectors.fetchUserExceptionStringsCollector(
          errorMessage: "StatusCode ${res.statusCode}",
        );

        debuggingValue.log();
        return null;
      }
    } catch (e) {
      final String debuggingValue =
          DebuggingStringsCollectors.fetchUserExceptionStringsCollector(
        errorMessage: "The entire request fills | error: $e",
      );

      debuggingValue.log();
      return null;
    }
  }

  Future<bool> createUser({required User user}) async {
    final url = Uri.https(
      'bci.net.sa',
      '/api/add_user',
    );

    try {
      final res = await http.post(
        url,
        body: user.toJson(),
      );
      if (res.statusCode == 200) {
        final String debuggingValue =
            DebuggingStringsCollectors.createUserSuccessStringsCollector(
          returnedResponseBody: res.body,
        );

        debuggingValue.log();

        return true;
      } else {
        final String debuggingValue =
            DebuggingStringsCollectors.createUserExceptionStringsCollector(
          errorMessage: "StatusCode ${res.statusCode}",
        );

        debuggingValue.log();
        return false;
      }
    } catch (e) {
      final String debuggingValue =
          DebuggingStringsCollectors.createUserExceptionStringsCollector(
        errorMessage: "The entire request fills | error: $e",
      );

      debuggingValue.log();
      return false;
    }
  }
}
