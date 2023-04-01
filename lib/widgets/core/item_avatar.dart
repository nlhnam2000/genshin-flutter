import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:genshin_app/utils/core_utils.dart';

class ItemAvatar extends StatelessWidget {
  const ItemAvatar({
    Key? key,
    required this.source,
    required this.rarity,
    this.width,
    this.height,
  }) : super(key: key);

  final String rarity;
  final String? source;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width ?? MediaQuery.of(context).size.width * 0.5,
      height: height ?? MediaQuery.of(context).size.height * 0.19,
      decoration: BoxDecoration(
        // color: getCharacterImageBackground(character.element ?? ""),
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: getItemColorBackground(rarity),
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: source != null
          ? CachedNetworkImage(
              imageUrl: source!,
              errorWidget: (context, url, error) => const Icon(
                Icons.error_outline_outlined,
                size: 30,
              ),
            )
          : Container(),
    );
  }
}
