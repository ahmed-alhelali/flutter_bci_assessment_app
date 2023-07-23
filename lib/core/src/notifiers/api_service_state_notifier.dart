import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';
import 'package:flutter_bci_assessment_app/core/src/services/api_services.dart';
import 'package:flutter_bci_assessment_app/core/src/typedefs/typedefs.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ApiServiceStateNotifier extends StateNotifier<IsLoading> {
  ApiServiceStateNotifier() : super(false);

  set isLoading(bool value) => state = value;

  final _apiServices = ApiServices();

  Future<Response?> fetchUsers(
      {CurrentPage? currentPage, required WidgetRef ref}) async {
    //this future.delayed is because we getting the usual exception : Providers are not allowed to modify other providers during their initialization
    await Future.delayed(const Duration(milliseconds: 200));

    isLoading = true;

    await Future.delayed(const Duration(seconds: 1));

    try {
      Response? response =
          await _apiServices.fetchUsers(currentPage: currentPage);

      ref.read(nextPageAvailableToFetchProvider.notifier).state =
          response?.next_page_url != null;

      return response;
    } catch (e) {
      return null;
    } finally {
      isLoading = false;
    }
  }

  Future<RequestSucceeded> createUser({
    required WidgetRef ref,
    required User user,
  }) async {
    isLoading = true;
    final requestSucceeded = await _apiServices.createUser(user: user);

    if (requestSucceeded) {
      LoadingWidget.instance().controller!.update(
            AppStrings.createdSuccessfully,
            SvgPicture.asset(
              AppIcons.kCircularCheckIcon,
              width: 40,
              height: 40,
              fit: BoxFit.fill,
            ),
          );
      ref.read(selectedPageNameProvider.notifier).update(
            (state) => AppRouteNames.usersList,
          );
      await Future.delayed(const Duration(seconds: 2));
    } else {
      LoadingWidget.instance().controller!.update(
            AppStrings.somethingWentToWrong,
            SvgPicture.asset(
              AppIcons.kErrorIcon,
              width: 40,
              height: 40,
              fit: BoxFit.fill,
            ),
          );
      ref.read(selectedPageNameProvider.notifier).update(
            (state) => AppRouteNames.usersList,
          );
      await Future.delayed(const Duration(seconds: 2));
    }

    isLoading = false;
    return requestSucceeded;
  }
}
