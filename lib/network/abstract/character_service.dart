import 'package:genshin_app/models/character_model.dart';

abstract class CharacterService {
  Future<List<Character>> getCharacters();
}
