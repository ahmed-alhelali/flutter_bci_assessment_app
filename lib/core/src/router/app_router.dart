import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/src/providers/current_page_name_provider.dart';
import 'package:flutter_bci_assessment_app/features/src/create_user/pages/create_user_page.dart';
import 'package:flutter_bci_assessment_app/features/src/users_list/pages/users_list_page.dart';
import 'package:flutter_bci_assessment_app/features/src/wrappers/pages/split_page.dart';
import 'package:flutter_bci_assessment_app/features/src/widgets/drawer_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app_routers_names.dart';
import 'app_routers_paths.dart';

class AppRouter {
  AppRouter({required WidgetRef ref}) {
    mainRouter = _getMainRouter(ref);
  }

  @visibleForTesting
  String setInitialLocation(String location) => initialLocation = location;

  static String initialLocation =
      '${AppRoutePaths.appRoot}${AppRoutePaths.createUser}';

  late GoRouter mainRouter;

  GoRouter _getMainRouter(WidgetRef ref) => GoRouter(
        initialLocation: initialLocation,
        debugLogDiagnostics: false,
        redirect: (context, state) {
          return null;
        },
        routes: [
          GoRoute(
            path: '${AppRoutePaths.appRoot}${AppRoutePaths.createUser}',
            name: '${AppRoutePaths.appRoot}${AppRoutePaths.createUser}',
            builder: (context, state) => SplitPage(
              appDrawer: const DrawerWidget(),
              appContent: ref.watch(selectedPageBuilderProvider)(context),
            ),
            routes: [
              GoRoute(
                path: AppRoutePaths.usersList,
                name: AppRouteNames.usersList,
                builder: (context, state) => const UsersListPage(),
              ),
              GoRoute(
                path: AppRoutePaths.createUser,
                name: AppRouteNames.createUser,
                builder: (context, state) => const CreateUserPage(),
              ),
            ],
          ),
        ],
      );
}
