import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/network/abstract/character_service.dart';
import 'package:dio/dio.dart';
import 'package:genshin_app/network/api_path.dart';

class CharacterServiceImpl implements CharacterService {
  @override
  Future<List<Character>> getCharacters() async {
    // List<Character> characterList = [];
    var response = await Dio().get("${ApiPath.baseAuth}/characters");
    return response.data
        .map<Character>((json) => Character.fromJson(json))
        .toList();
  }
}
