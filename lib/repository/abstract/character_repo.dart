import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/models/combat_model.dart';
import 'package:genshin_app/models/combat_response_model.dart';

abstract class CharacterRepo {
  Future<List<Character>> getCharacters();
  Future<List<String>> search({required String keyword});
  Future<CombatResponseModel> getTalents({required String name});
}
