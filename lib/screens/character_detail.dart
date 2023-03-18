import 'package:flutter/material.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/provider/talent_provider.dart';
import 'package:genshin_app/widgets/core/genshindb_page.dart';
import 'package:genshin_app/widgets/core/info_section.dart';
import 'package:genshin_app/widgets/core/talent_item.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CharacterDetail extends StatefulWidget {
  final String name;
  final Character character;
  const CharacterDetail({Key? key, required this.name, required this.character})
      : super(key: key);

  static const routeName = "character_detail";
  static MaterialPage page(
      {required String name, required Character character}) {
    return MaterialPage(
      name: routeName,
      key: const ValueKey(routeName),
      child: CharacterDetail(
        name: name,
        character: character,
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
      ],
      builder: (context, child) => Scaffold(
        body: GenshindbPage(
          character: widget.character,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoSection(
                  title: "Biography",
                  content: Text(widget.character.description),
                ),
                const SizedBox(
                  height: 20,
                ),
                Consumer<TalentProvider>(builder: (context, value, child) {
                  if (value.data.viewStatus == ViewStatus.succeed) {
                    return InfoSection(
                      title: "Special Ability",
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (int index = 0;
                              index < value.data.data!.combats.length;
                              index++) ...[
                            TalentItem(
                              combat: value.data.data!.combats[index],
                              element: widget.character.element,
                              imagePath: value.data.data!.images
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
        ),
      ),
    );
  }
}
