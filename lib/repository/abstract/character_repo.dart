import 'package:genshin_app/models/character_model.dart';

abstract class CharacterRepo {
  Future<List<Character>> getCharacters();
}
