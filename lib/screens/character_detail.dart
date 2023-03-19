import 'package:flutter/material.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/provider/detail_character_provider.dart';
import 'package:genshin_app/provider/talent_provider.dart';
import 'package:genshin_app/widgets/core/genshindb_page.dart';
import 'package:genshin_app/widgets/core/info_section.dart';
import 'package:genshin_app/widgets/core/talent_item.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CharacterDetail extends StatefulWidget {
  final String name;
  const CharacterDetail({Key? key, required this.name}) : super(key: key);

  static const routeName = "character_detail";
  static MaterialPage page({required String name}) {
    return MaterialPage(
      name: routeName,
      key: const ValueKey(routeName),
      child: CharacterDetail(
        name: name,
      ),
    );
  }

  @override
  State<CharacterDetail> createState() => _CharacterDetailState();
}

class _CharacterDetailState extends State<CharacterDetail> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TalentProvider()..getTalents(name: widget.name),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              DetailCharacterProvider()..getCharacterDetail(name: widget.name),
        )
      ],
      builder: (context, child) => Scaffold(
        body: Consumer<DetailCharacterProvider>(
          builder: (context, detailCharProvider, child) {
            if (detailCharProvider.characterData.viewStatus ==
                ViewStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (detailCharProvider.characterData.viewStatus ==
                ViewStatus.succeed) {
              return GenshindbPage(
                character: detailCharProvider.characterData.data!,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InfoSection(
                        title: "Biography",
                        content: Text(
                            detailCharProvider.characterData.data!.description),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Consumer<TalentProvider>(
                          builder: (context, talentProvider, child) {
                        if (talentProvider.data.viewStatus ==
                            ViewStatus.succeed) {
                          return InfoSection(
                            title: "Special Ability",
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                for (int index = 0;
                                    index <
                                        talentProvider
                                            .data.data!.combats.length;
                                    index++) ...[
                                  TalentItem(
                                    combat: talentProvider
                                        .data.data!.combats[index],
                                    element: detailCharProvider
                                        .characterData.data!.element,
                                    imagePath: talentProvider.data.data!.images
                                            .getCombatImage(index + 1) ??
                                        "",
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ]
                              ],
                            ),
                          );
                        }

                        return Container();
                      })
                    ],
                  ),
                ),
              );
            }

            return Container();
          },
        ),
      ),
    );
  }
}
