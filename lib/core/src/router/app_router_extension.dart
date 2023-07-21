import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'app_routers_names.dart';

extension AppRouterExtension on BuildContext {
  void pushHome() {
    GoRouter.of(this).pushNamed(
      AppRouteNames.home,
    );
  }

  void pushCreateUser() {
    GoRouter.of(this).pushNamed(
      AppRouteNames.createUser,
    );
  }

  void pop() {
    GoRouter.of(this).pop();
  }
}

// extension ContainsRouteExtension on BuildContext {
//   bool inRoute(String routeName) =>
//       canPop() ? GoRouter.of(this).location.contains(routeName) : false;
// }
