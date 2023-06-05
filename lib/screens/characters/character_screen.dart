import 'package:flutter/material.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/provider/character_provider.dart';
import 'package:genshin_app/screens/base_provider_widget.dart';
import 'package:genshin_app/screens/characters/character_detail.dart';
import 'package:genshin_app/widgets/character/character_container.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CharacterProvider>(
      builder: (context, value, child) {
        return BaseProviderWidget(
          baseProviderModel: value.characterList,
          childWhenSuceed: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: const BoxDecoration(
                //color: CustomColor.secondaryBackground,
                ),
            width: double.infinity,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.9),
              itemCount: value.characterList.data?.length,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () => GoRouter.of(context).pushNamed(
                    CharacterDetail.routeName,
                    params: {
                      "name": value.characterList.data![index].name ?? "",
                    },
                    extra: value.characterList.data![index],
                  ),
                  child: CharacterContainer(
                    character: value.characterList.data![index],
                  ),
                );
              }),
            ),
          ),
        );
      },
    );
  }
}
