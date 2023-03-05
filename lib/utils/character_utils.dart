import 'package:flutter/material.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/utils/colors.dart';

Color getCharacterImageBackground(Character character) {
  switch (character.element) {
    case 'Pyro':
      return CustomColor.pyroBackground;
    case 'Cryo':
      return CustomColor.cryoBackground;
    case 'Hydro':
      return CustomColor.hydroBackground;
    case 'Electro':
      return CustomColor.electroBackground;
    case 'Geo':
      return CustomColor.geoBackground;
    case 'Anemo':
      return CustomColor.anemoBackground;
    default:
      return CustomColor.dendroBackground;
  }
}
