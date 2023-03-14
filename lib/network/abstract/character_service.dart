import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/network/api_service.dart';

abstract class CharacterService {
  Future<GenshinDBResponseJson> getCharacters();
  Future<GenshinDBResponseJson> searchCharacter({required String keyword});
}
