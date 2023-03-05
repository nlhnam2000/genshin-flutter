import 'package:flutter/material.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/utils/character_utils.dart';

class CharacterAvatar extends StatelessWidget {
  CharacterAvatar({Key? key, required this.character, this.width, this.height})
      : super(key: key);

  final Character character;
  double? width;
  double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width ?? MediaQuery.of(context).size.width * 0.5,
      height: height ?? MediaQuery.of(context).size.height * 0.19,
      decoration: BoxDecoration(
        color: getCharacterImageBackground(character),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.network(
        character.images.icon!,
      ),
    );
  }
}
