import 'package:flutter/material.dart';
import 'package:genshin_app/main.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/utils/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Color getCharacterImageBackground(String element, [bool isBlured = false]) {
  var el = AppLocalizations.of(navigatorKey.currentContext!);
  if (element.toLowerCase() == el!.pyro.toLowerCase()) {
    return CustomColor.pyroBackground.withOpacity(isBlured ? 0.6 : 1.0);
  } else if (element.toLowerCase() == el.cryo.toLowerCase()) {
    return CustomColor.cryoBackground.withOpacity(isBlured ? 0.6 : 1.0);
  } else if (element.toLowerCase() == el.hydro.toLowerCase()) {
    return CustomColor.hydroBackground.withOpacity(isBlured ? 0.6 : 1.0);
  } else if (element.toLowerCase() == el.electro.toLowerCase()) {
    return CustomColor.electroBackground.withOpacity(isBlured ? 0.6 : 1.0);
  } else if (element.toLowerCase() == el.geo.toLowerCase()) {
    return CustomColor.geoBackground.withOpacity(isBlured ? 0.6 : 1.0);
  } else if (element.toLowerCase() == el.anemo.toLowerCase()) {
    return CustomColor.anemoBackground.withOpacity(isBlured ? 0.6 : 1.0);
  } else if (element.toLowerCase() == el.dendro.toLowerCase()) {
    return CustomColor.dendroBackground.withOpacity(isBlured ? 0.6 : 1.0);
  }

  return Colors.transparent;
}

List<Color> getItemColorBackground(String? rarity) {
  if (rarity != null) {
    switch (int.tryParse(rarity)) {
      case 1:
        return k1star;
      case 2:
        return k2star;
      case 3:
        return k3star;
      case 4:
        return k4star;
      case 5:
        return k5star;
      default:
        throw Exception("This is not a valid rarity");
    }
  }
  return k1star;
}
