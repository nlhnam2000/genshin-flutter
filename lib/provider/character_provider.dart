import 'package:flutter/material.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/repository/impl/character_repo_impl.dart';

class CharacterProvider extends ChangeNotifier {
  List<Character> characterList = [];

  CharacterProvider() {
    getCharacters();
  }

  void getCharacters() async {
    characterList = await CharacterRepoImpl().getCharacters();

    notifyListeners();
  }
}
