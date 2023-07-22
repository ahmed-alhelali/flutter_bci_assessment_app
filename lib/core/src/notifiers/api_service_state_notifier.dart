import 'package:flutter_bci_assessment_app/core/src/services/api_services.dart';
import 'package:flutter_bci_assessment_app/core/src/typedefs/typedefs.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/user.dart';

class ApiServiceStateNotifier extends StateNotifier<IsLoading> {
  ApiServiceStateNotifier() : super(false);

  set isLoading(bool value) => state = value;

  final _apiServices = ApiServices();

  Future<List<User>?> fetchUsers({CurrentPage? currentPage}) async {
    isLoading = true;

    try {
      List<User>? users =
          await _apiServices.fetchUsers(currentPage: currentPage);
      return users;
    } catch (e) {
      return null;
    } finally {
      isLoading = false;
    }
  }

  Future<bool> addUser({required User user}) async {
    isLoading = true;

    try {
      await _apiServices.addUser(user: user);
      return true;
    } catch (e) {
      return false;
    } finally {
      isLoading = false;
    }
  }
}
