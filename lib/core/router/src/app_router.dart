import 'package:flutter/material.dart';
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
      '${AppRoutePaths.appRoot}${AppRoutePaths.responsivePage}';

  late GoRouter mainRouter;

  GoRouter _getMainRouter() => GoRouter(
        initialLocation: initialLocation,
        debugLogDiagnostics: false,
        redirect: (context, state) {
          return null;
        },
        routes: [
          GoRoute(
            path: '${AppRoutePaths.appRoot}${AppRoutePaths.responsivePage}',
            name: '${AppRoutePaths.appRoot}${AppRoutePaths.responsivePage}',
            builder: (context, state) => const Offstage(),
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
