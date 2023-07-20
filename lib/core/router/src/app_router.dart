import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/features/features.dart';
import 'package:flutter_bci_assessment_app/features/src/create_user/pages/split_view_page.dart';
import 'package:flutter_bci_assessment_app/features/src/create_user/pages/users_list_page.dart';
import 'package:flutter_bci_assessment_app/features/src/create_user/widgets/drawar_widget.dart';
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
            builder: (context, state) => const SplitViewPage(
              menu: DrawerWidget(),
              content: UsersListPage(),
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
