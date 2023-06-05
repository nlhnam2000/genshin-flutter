import 'package:flutter/material.dart';
import 'package:genshin_app/device/storage_service.dart';
import 'package:genshin_app/provider/base_provider.dart';
import 'package:flutter_core/caches/caches.dart';
import 'package:genshin_app/utils/constants.dart';

class LanguageProvider extends BaseProvider {
  Locale appLanguage = const Locale("en");

  Future<void> initAppLanguage() async {
    String? savedAppLanguage =
        await StorageService().get(LanguageConstant.appLanguage);
    if (savedAppLanguage != null) {
      switch (savedAppLanguage) {
        case "vi":
          appLanguage = const Locale('vi');
          break;
        case "en":
          appLanguage = const Locale("en");
          break;
        default:
          appLanguage = const Locale("en");
          break;
      }
    } else {
      appLanguage = const Locale("en");
    }
    notifyListeners();
  }

  Future<void> setAppLanguage(Locale lang) async {
    await StorageService().put(LanguageConstant.appLanguage, lang.languageCode);
    appLanguage = lang;
    notifyListeners();
  }
}
