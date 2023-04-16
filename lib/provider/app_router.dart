import 'package:flutter/material.dart';
import 'package:genshin_app/main.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/provider/base_provider.dart';
import 'package:genshin_app/screens/character_detail.dart';
import 'package:genshin_app/screens/home_screen.dart';
import 'package:genshin_app/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter extends BaseProvider {
  late GoRouter router = GoRouter(
    initialLocation: "/splash",
    debugLogDiagnostics: true,
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        path: '/splash',
        name: SplashScreen.routeName,
        pageBuilder: (context, state) => SplashScreen.page(),
      ),
      GoRoute(
        path: "/home",
        name: HomeScreen.routeName,
        pageBuilder: (context, state) {
          return HomeScreen.page();
        },
      ),
      GoRoute(
        path: "/character/:name",
        name: CharacterDetail.routeName,
        pageBuilder: (context, state) {
          return CharacterDetail.page(
            name: state.params["name"]!,
          );
        },
        // pageBuilder: (context, state) => CustomTransitionPage(
        //   key: state.pageKey,
        //   child: CharacterDetail(name: state.params["name"]!),
        //   transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        //       SlideTransition(
        //           position: animation.drive(
        //             Tween<Offset>(
        //               begin: const Offset(0.25, 0.25),
        //               end: Offset.zero,
        //             ).chain(CurveTween(curve: Curves.easeIn)),
        //           ),
        //           child: child),
        // ),
      )
    ],
  );
}
