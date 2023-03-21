import 'package:genshin_app/models/ascension_model.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/models/combat_model.dart';
import 'package:genshin_app/models/combat_response_model.dart';
import 'package:genshin_app/models/general_character_model.dart';
import 'package:genshin_app/models/image_model.dart';
import 'package:genshin_app/network/abstract/character_service.dart';
import 'package:genshin_app/network/api_service.dart';
import 'package:genshin_app/network/impl/character_service_impl.dart';
import 'package:genshin_app/repository/abstract/character_repo.dart';
import 'package:get/get.dart';

class CharacterRepoImpl implements CharacterRepo {
  static String tag = "CharacterRepoImpl";
  final characterService =
      Get.find<CharacterService>(tag: CharacterServiceImpl.tag);
  // final CharacterService characterService = CharacterServiceImpl();
  @override
  Future<List<GeneralCharacterModel>> getCharacters() async {
    GenshinDBResponseJson response =
        await CharacterServiceImpl().getCharacters();

    return response.content!["data"]
        .map<GeneralCharacterModel>(
            (item) => GeneralCharacterModel.fromJson(item))
        .toList();
  }

  @override
  Future<List<String>> search({required String keyword}) async {
    GenshinDBResponseJson response =
        await characterService.searchCharacter(keyword: keyword);

    return response.content!["data"].cast<String>();
  }

  @override
  Future<CombatResponseModel> getTalents({required String name}) async {
    GenshinDBResponseJson response =
        await characterService.getCharacterTalents(name: name);
    List<CombatModel> combatList = [
      CombatModel.fromJson(response.content!["combat1"]),
      CombatModel.fromJson(response.content!["combat2"]),
      CombatModel.fromJson(response.content!["combat3"]),
    ];
    ImageModel images = ImageModel.fromJson(response.content!["images"]);

    return CombatResponseModel(combatList, images);
  }

  @override
  Future<Character> getDetail({required String name}) async {
    GenshinDBResponseJson response =
        await characterService.getDetailCharacter(name: name);

    return Character.fromJson(response.content!);
  }

  @override
  Future<List<List<AscensionModel>>> getAscension(
      {required String name}) async {
    GenshinDBResponseJson response =
        await characterService.getCharacterAscension(name: name);
    List<List<AscensionModel>> result = [];

    for (int i = 0; i < response.content!["data"].length; i++) {
      late List<AscensionModel> ascends;
      ascends = response.content!["data"][i]
          .map<AscensionModel>((item) => AscensionModel.fromJson(item))
          .toList();
      result.add(ascends);
    }

    return result;
  }
}
