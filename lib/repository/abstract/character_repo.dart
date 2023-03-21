import 'package:genshin_app/models/ascension_model.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/models/combat_model.dart';
import 'package:genshin_app/models/combat_response_model.dart';
import 'package:genshin_app/models/general_character_model.dart';

abstract class CharacterRepo {
  Future<List<GeneralCharacterModel>> getCharacters();
  Future<List<String>> search({required String keyword});
  Future<CombatResponseModel> getTalents({required String name});
  Future<Character> getDetail({required String name});
  Future<List<List<AscensionModel>>> getAscension({required String name});
}
