import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';
import 'package:flutter_bci_assessment_app/core/src/configs/app_strings.dart';
import 'package:flutter_bci_assessment_app/core/src/services/api_services.dart';
import 'package:flutter_bci_assessment_app/core/src/typedefs/typedefs.dart';
import 'package:flutter_bci_assessment_app/core/src/widgets/loading/loading_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      LoadingWidget.instance().controller!.update(
            AppStrings.createdSuccessfully,
            SvgPicture.asset(
              AppIcons.kCircularCheckIcon,
              width: 40,
              height: 40,
              fit: BoxFit.fill,
            ),
          );

      await Future.delayed(const Duration(seconds: 2));

      return true;
    } catch (e) {
      return false;
    } finally {
      isLoading = false;
    }
  }
}
