import 'package:flutter/material.dart';
import 'package:genshin_app/screens/character_detail.dart';
import 'package:genshin_app/screens/home_screen.dart';
import 'package:genshin_app/theme/theme.dart';
import 'package:genshin_app/utils/colors.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.

  final routes = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: "/character/:name",
        builder: (context, state) => CharacterDetail(
          name: state.params["name"]!,
        ),
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
