import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:genshin_app/network/app_service.dart';
import 'package:genshin_app/provider/app_router.dart';
import 'package:genshin_app/provider/artifact_provider.dart';
import 'package:genshin_app/provider/character_provider.dart';
import 'package:genshin_app/provider/language_provider.dart';
import 'package:genshin_app/provider/report_provider.dart';
import 'package:genshin_app/provider/weapon_general_provider.dart';
import 'package:genshin_app/repository/repos.dart';
import 'package:genshin_app/theme/theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_core/caches/caches.dart';
import 'package:flutter_core/localizations/localizations.dart';
import 'package:flutter_core/models/language.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

var navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  AppService.registerService();
  Repository.registerRepo();
  WidgetsFlutterBinding.ensureInitialized();
  // AppSetting.setLanguage(Language("vi", "Vietnamese"));
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppRouter(),
        ),
        ChangeNotifierProvider(
          create: (context) => CharacterProvider()..getCharacters(),
        ),
        ChangeNotifierProvider(
          create: (context) => WeaponGeneralProvider()..getWeaponGeneral(),
        ),
        ChangeNotifierProvider(
          create: (context) => ArtifactProvider()..getAllArtifact(),
        ),
        ChangeNotifierProvider(
          create: (context) => ReportProvider()..getStaffList(),
          lazy: true,
        ),
        // ChangeNotifierProvider(
        //   create: (context) => LanguageProvider()..initAppLanguage(),
        // ),
      ],
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final routes = Provider.of<AppRouter>(context).router;
    return StreamBuilder(
      stream: AppSetting.languageStream,
      builder: (context, snapshot) => MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        localizationsDelegates: const [
          CoreLocalizations.delegate,
          AppLocalizations.delegate, // Add this line
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: SUPPORTED_LOCALES,
        routerConfig: routes,
        locale: snapshot.data,
        // routerDelegate: routes.routerDelegate,
        // routeInformationParser: routes.routeInformationParser,
        // routeInformationProvider: routes.routeInformationProvider,
        // backButtonDispatcher: routes.backButtonDispatcher,
      ),
    );
  }
}
