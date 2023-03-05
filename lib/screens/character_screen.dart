import 'package:flutter/material.dart';
import 'package:genshin_app/provider/character_provider.dart';
import 'package:genshin_app/utils/colors.dart';
import 'package:genshin_app/widgets/character/character_container.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CharacterProvider characterProvider = context.watch<CharacterProvider>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            //color: CustomColor.secondaryBackground,
            ),
        width: double.infinity,
        child: Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.9),
            itemCount: characterProvider.characterList.length,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () => GoRouter.of(context).go("/character/Diluc"),
                child: CharacterContainer(
                    character: characterProvider.characterList[index]),
              );
            }),
          ),
        ),
      ),
    );
  }
}
