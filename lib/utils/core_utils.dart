import 'package:flutter/material.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/utils/colors.dart';

Color getCharacterImageBackground(String element, [bool isBlured = false]) {
  switch (element) {
    case 'Pyro':
      return CustomColor.pyroBackground.withOpacity(isBlured ? 0.6 : 1.0);
    case 'Cryo':
      return CustomColor.cryoBackground.withOpacity(isBlured ? 0.6 : 1.0);
    case 'Hydro':
      return CustomColor.hydroBackground.withOpacity(isBlured ? 0.6 : 1.0);
    case 'Electro':
      return CustomColor.electroBackground.withOpacity(isBlured ? 0.6 : 1.0);
    case 'Geo':
      return CustomColor.geoBackground.withOpacity(isBlured ? 0.6 : 1.0);
    case 'Anemo':
      return CustomColor.anemoBackground.withOpacity(isBlured ? 0.6 : 1.0);
    default:
      return CustomColor.dendroBackground.withOpacity(isBlured ? 0.6 : 1.0);
  }
}

List<Color> getItemColorBackground(String rarity) {
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
