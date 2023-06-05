import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:genshin_app/device/storage_service.dart';
import 'package:genshin_app/screens/settings/setting_screen.dart';
import 'package:genshin_app/screens/splash/splash_screen.dart';
import 'package:genshin_app/screens/test/report_no_sale/report_no_sale_screen.dart';
import 'package:go_router/go_router.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      child: ListView(
        children: [
          InkWell(
            onTap: () {
              GoRouter.of(context).pushNamed(SettingScreen.routeName);
            },
            child: ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                AppLocalizations.of(context)!.setting,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              GoRouter.of(context).pushNamed(ReportNoSaleScreen.routeName);
            },
            child: const ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                "Report no sale",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              StorageService().clearAll().then((value) => GoRouter.of(context)
                ..pop()
                ..goNamed(SplashScreen.routeName));
            },
            child: ListTile(
              leading: const Icon(
                Icons.login_outlined,
                color: Colors.white,
              ),
              title: Text(
                AppLocalizations.of(context)!.logout,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
