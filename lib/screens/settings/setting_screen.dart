import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_core/caches/caches.dart';
import 'package:flutter_core/models/models.dart';
import 'package:genshin_app/device/storage_service.dart';
import 'package:genshin_app/utils/constants.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  static const String routeName = "SettingScreen";
  static CupertinoPage page() {
    return const CupertinoPage(
      name: routeName,
      key: ValueKey(routeName),
      child: SettingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    var localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)?.setting ?? "",
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
          top: Dimens.paddingMedium,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                localizations?.setAppLanguage ?? "",
                style: Theme.of(context).textTheme.headline1,
              ),
              subtitle: StreamBuilder(
                stream: AppSetting.languageStream,
                builder: (context, snapshot) => Wrap(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTile(
                      leading: Radio<Locale>(
                        value: const Locale("vi"),
                        groupValue: snapshot.data,
                        onChanged: (value) {
                          AppSetting.setLanguage(Language("vi", "Tiếng Việt"));
                          // StorageService().put(LanguageConstant.appLanguage, "vi");
                        },
                        fillColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.white,
                        ),
                      ),
                      title: const Text("Tiếng Việt"),
                    ),
                    ListTile(
                      leading: Radio<Locale>(
                        value: const Locale("en"),
                        groupValue: snapshot.data,
                        onChanged: (value) {
                          AppSetting.setLanguage(Language("en", "English"));
                        },
                        fillColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.white,
                        ),
                      ),
                      title: const Text("English"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
