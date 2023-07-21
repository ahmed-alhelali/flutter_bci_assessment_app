import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/features/src/create_user/pages/create_user_page.dart';
import 'package:flutter_bci_assessment_app/features/src/wrappers/pages/split_page.dart';
import 'package:flutter_bci_assessment_app/features/src/widgets/drawer_widget.dart';
import 'package:go_router/go_router.dart';

import 'app_routers_names.dart';
import 'app_routers_paths.dart';

class AppRouter {
  AppRouter() {
    mainRouter = _getMainRouter();
  }

  @visibleForTesting
  String setInitialLocation(String location) => initialLocation = location;

  static String initialLocation =
      '${AppRoutePaths.appRoot}${AppRoutePaths.createUser}';

  late GoRouter mainRouter;

  GoRouter _getMainRouter() => GoRouter(
        initialLocation: initialLocation,
        debugLogDiagnostics: false,
        redirect: (context, state) {
          return null;
        },
        routes: [
          GoRoute(
            path: '${AppRoutePaths.appRoot}${AppRoutePaths.createUser}',
            name: '${AppRoutePaths.appRoot}${AppRoutePaths.createUser}',
            builder: (context, state) => const SplitPage(
              appDrawer: DrawerWidget(),
              appContent: CreateUserPage(),
            ),
            routes: [
              GoRoute(
                path: AppRoutePaths.home,
                name: AppRouteNames.home,
                builder: (context, state) => const Offstage(),
              ),
              GoRoute(
                path: AppRoutePaths.createUser,
                name: AppRouteNames.createUser,
                builder: (context, state) => const Offstage(),
              ),
            ],
          ),
        ],
      );
}
