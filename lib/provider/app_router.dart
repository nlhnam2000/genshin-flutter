import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/provider/base_provider.dart';
import 'package:genshin_app/screens/character_detail.dart';
import 'package:genshin_app/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter extends BaseProvider {
  late GoRouter router = GoRouter(
    initialLocation: "/",
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: "/character/:name",
        name: CharacterDetail.routeName,
        pageBuilder: (context, state) {
          return CharacterDetail.page(
            name: state.params["name"]!,
          );
        },
      )
    ],
  );
}
