import 'package:flutter/material.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/widgets/core/genshindb_page.dart';
import 'package:genshin_app/widgets/core/info_section.dart';
import 'package:go_router/go_router.dart';

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
    return Scaffold(
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
            ],
          ),
        ),
      ),
    );
  }
}
