import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      child: ListView(
        children: [
          InkWell(
            onTap: () {},
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
          )
        ],
      ),
    );
  }
}
