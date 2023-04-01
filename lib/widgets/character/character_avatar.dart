import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/models/general_character_model.dart';
import 'package:genshin_app/utils/core_utils.dart';

class CharacterAvatar extends StatelessWidget {
  const CharacterAvatar(
      {Key? key, required this.character, this.width, this.height})
      : super(key: key);

  final GeneralCharacterModel character;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width ?? MediaQuery.of(context).size.width * 0.5,
      height: height ?? MediaQuery.of(context).size.height * 0.19,
      decoration: BoxDecoration(
        color: getCharacterImageBackground(character.element ?? ""),
        borderRadius: BorderRadius.circular(15),
      ),
      child: character.images != null
          ? CachedNetworkImage(
              imageUrl: character.images!.icon ?? character.images!.card ?? "",
              errorWidget: (context, url, error) =>
                  const Icon(Icons.error_outline_outlined),
            )
          : Container(),
    );
  }
}
