import 'package:flutter/material.dart';
import 'package:genshin_app/network/app_service.dart';
import 'package:genshin_app/provider/app_router.dart';
import 'package:genshin_app/repository/repos.dart';
import 'package:genshin_app/theme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  AppService.registerService();
  Repository.registerRepo();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppRouter(),
          builder: (context, child) => const MyApp(),
        ),
      ],
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final routes = Provider.of<AppRouter>(context).router;
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      routerConfig: routes,
      // routerDelegate: routes.routerDelegate,
      // routeInformationParser: routes.routeInformationParser,
      // routeInformationProvider: routes.routeInformationProvider,
      // backButtonDispatcher: routes.backButtonDispatcher,
    );
  }
}
