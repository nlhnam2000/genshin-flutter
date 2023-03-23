import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/utils/character_utils.dart';
import 'package:genshin_app/utils/colors.dart';
import 'package:genshin_app/utils/constants.dart';
import 'package:go_router/go_router.dart';

class GenshindbPage extends StatelessWidget {
  final Widget child;
  final Character character;
  const GenshindbPage({
    Key? key,
    required this.child,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                right: MediaQuery.of(context).size.width * 0.1,
                child: Opacity(
                  opacity: 0.7,
                  child: CachedNetworkImage(
                    imageUrl: character.images.cover1 ??
                        character.images.cover2 ??
                        character.images.icon!,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  color: getCharacterImageBackground(character.element, true),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      character.images.cover1 ??
                          character.images.cover2 ??
                          character.images.icon!,
                      scale: 4,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height * 0.6,
            ),
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: CustomColor.primaryBackground,
            ),
            child: child,
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: Dimens.paddingMedium,
                ),
                child: GestureDetector(
                  onTap: () => GoRouter.of(context).pop(),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
