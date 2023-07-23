import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/core.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  late AppRouter appRouter;

  @override
  void initState() {
    super.initState();

    appRouter = AppRouter(ref: ref);
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.light,
      theme: const AppTheme(ThemeType.light).getTheme(),
      routerDelegate: appRouter.mainRouter.routerDelegate,
      routeInformationParser: appRouter.mainRouter.routeInformationParser,
      routeInformationProvider: appRouter.mainRouter.routeInformationProvider,
      debugShowCheckedModeBanner: false,
    );
  }
}
