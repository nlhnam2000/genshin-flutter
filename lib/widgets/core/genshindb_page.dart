import 'package:flutter/material.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/utils/character_utils.dart';
import 'package:genshin_app/utils/colors.dart';

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
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  color: getCharacterImageBackground(character),
                  image: DecorationImage(
                    image: NetworkImage(
                      character.images.cover1 ??
                          character.images.cover2 ??
                          character.images.icon!,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height * 0.6,
                ),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.3),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: CustomColor.primaryBackground,
                ),
                child: child,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
