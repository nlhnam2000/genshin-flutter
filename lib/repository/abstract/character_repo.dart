import 'package:genshin_app/models/character_model.dart';

abstract class CharacterRepo {
  Future<List<Character>> getCharacters();
  Future<List<String>> search({required String keyword});
}
