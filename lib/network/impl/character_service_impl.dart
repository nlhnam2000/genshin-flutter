import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/network/abstract/character_service.dart';
import 'package:dio/dio.dart';
import 'package:genshin_app/network/api_path.dart';
import 'package:genshin_app/network/api_service.dart';
import 'package:genshin_app/network/interceptor.dart';

class CharacterServiceImpl implements CharacterService {
  static const String tag = "CharacterServiceImpl";
  @override
  Future<GenshinDBResponseJson> getCharacters() async {
    GenshinDBResponseJson response =
        await get(host: ApiPath.baseHost, path: ApiPath.getAllCharacters);
    return response;
  }

  @override
  Future<GenshinDBResponseJson> searchCharacter(
      {required String keyword}) async {
    GenshinDBResponseJson response = await get(
        host: ApiPath.baseHost,
        path: ApiPath.searchCharacters,
        params: {
          "name": keyword,
        });

    return response;
  }

  @override
  Future<GenshinDBResponseJson> getCharacterTalents(
      {required String name}) async {
    GenshinDBResponseJson response = await get(
      host: ApiPath.baseHost,
      path: ApiPath.getCharacterTalents,
      params: {
        "name": name,
      },
    );

    return response;
  }

  @override
  Future<GenshinDBResponseJson> getDetailCharacter(
      {required String name}) async {
    return await get(
      host: ApiPath.baseHost,
      path: ApiPath.getDetailCharacter,
      params: {
        "name": name,
      },
    );
  }

  @override
  Future<GenshinDBResponseJson> getCharacterAscension(
      {required String name}) async {
    return await get(
      host: ApiPath.baseHost,
      path: ApiPath.getCharacterAscension,
      params: {
        "name": name,
      },
    );
  }
}
