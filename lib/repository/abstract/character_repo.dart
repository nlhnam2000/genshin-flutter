import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/models/combat_model.dart';

abstract class CharacterRepo {
  Future<List<Character>> getCharacters();
  Future<List<String>> search({required String keyword});
  Future<List<CombatModel>> getTalents({required String name});
}
