import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back),
          onTap: () => GoRouter.of(context).pop(),
        ),
        title: Text(widget.name),
      ),
    );
  }
}
