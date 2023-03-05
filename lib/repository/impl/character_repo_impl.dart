import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/network/impl/character_service_impl.dart';
import 'package:genshin_app/repository/abstract/character_repo.dart';

class CharacterRepoImpl implements CharacterRepo {
  @override
  Future<List<Character>> getCharacters() async {
    return await CharacterServiceImpl().getCharacters();
  }
}
