 import 'package:flutter/material.dart';
import 'core/core.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late AppRouter appRouter;

  @override
  void initState() {
    super.initState();

    appRouter = AppRouter();
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
 class ResponsiveApp extends StatefulWidget {
   const ResponsiveApp({super.key});

   @override
   State<ResponsiveApp> createState() => _ResponsiveAppState();
 }

 class _ResponsiveAppState extends State<ResponsiveApp> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: LayoutBuilder(
         builder: (BuildContext context, BoxConstraints constraints) {
           if (constraints.maxWidth < 700) {
             //phone
             return Center(
               child: IconButton(
                 icon: const Icon(Icons.add),
                 onPressed: () => context.pushCreateUser(),
               ),
             );
           } else if (constraints.maxWidth > 700 &&
               constraints.maxWidth < 1024) {
             //tablet
             return Center(
               child: IconButton(
                 icon: const Icon(Icons.add),
                 onPressed: () => context.pushCreateUser(),
               ),
             );
           } else {
             //Browser
             return Center(
               child: IconButton(
                 icon: const Icon(Icons.add),
                 onPressed: () => context.pushCreateUser(),
               ),
             );
           }
         },
       ),
     );
   }
 }

 class CreateUser extends StatelessWidget {
   const CreateUser({super.key});

   @override
   Widget build(BuildContext context) {
     return const Placeholder();
   }
 }