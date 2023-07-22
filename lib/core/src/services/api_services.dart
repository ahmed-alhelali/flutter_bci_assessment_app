import 'dart:convert';

import 'package:flutter_bci_assessment_app/core/src/debugging/debugging_extension.dart';
import 'package:flutter_bci_assessment_app/core/src/debugging/debugging_strings_collectors.dart';
import 'package:flutter_bci_assessment_app/core/src/models/user.dart';
import 'package:flutter_bci_assessment_app/core/src/typedefs/typedefs.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  ApiServices();

  Future<List<User>?> fetchUsers({CurrentPage? currentPage}) async {
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
        List<dynamic> data = jsonData['users']['data'];

        List<User> users =
            data.map((userJson) => User.fromJson(userJson)).toList();

        return users;
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

  Future<bool> addUser({required User user}) async {
    final url = Uri.https(
      'bci.net.sa',
      '/api/add_user',
    );

    try {
      final res = await http.post(
        url,
        // body: user.toJson(),
        body: {
          "name": "a",
          "phone": "1231",
          "email": "ahm@gmail.com",
          "branch": "ba",
          "city": "dc",
          "country": "sa",
          // "password": "weweasd2123",
          "age": "12",
          "account": "user",
          "address": "ad",
        },
      );
      if (res.statusCode == 200) {
        print('Response: ${res.body}');
        return true;
      } else {
        print('Request failed with status: ${res.statusCode}');
        return false;
      }
    } catch (e) {
      "$e".log();
      return false;
    }
  }
}
