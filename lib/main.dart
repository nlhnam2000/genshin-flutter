import 'package:flutter/material.dart';
import 'package:genshin_app/network/app_service.dart';
import 'package:genshin_app/repository/repos.dart';
import 'package:genshin_app/screens/character_detail.dart';
import 'package:genshin_app/screens/home_screen.dart';
import 'package:genshin_app/theme/theme.dart';
import 'package:go_router/go_router.dart';

void main() {
  AppService.registerService();
  Repository.registerRepo();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.

  final routes = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: "/character/:name",
        name: CharacterDetail.routeName,
        pageBuilder: (context, state) {
          return CharacterDetail.page(name: state.params["name"]!);
        },
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      routerConfig: routes,
    );
  }
}
