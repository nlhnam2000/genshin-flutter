import 'package:genshin_app/device/storage_service.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/network/abstract/character_service.dart';
import 'package:dio/dio.dart';
import 'package:genshin_app/network/api_path.dart';
import 'package:genshin_app/network/api_service.dart';
import 'package:genshin_app/network/interceptor.dart';
import 'package:genshin_app/utils/constants.dart';

class CharacterServiceImpl implements CharacterService {
  static const String tag = "CharacterServiceImpl";
  // String? _savedHost;

  // Future<void> onInitService() async {
  //   _savedHost = await StorageService().get(StorageConstant.savedHost);
  // }

  // CharacterServiceImpl() {
  //   onInitService();
  // }

  @override
  Future<GenshinDBResponseJson> getCharacters() async {
    final deployHost = await StorageService().get(StorageConstant.savedHost);
    GenshinDBResponseJson response = await get(
        host: deployHost ?? ApiPath.baseHost, path: ApiPath.getAllCharacters);
    return response;
  }

  @override
  Future<GenshinDBResponseJson> searchCharacter(
      {required String keyword}) async {
    final deployHost = await StorageService().get(StorageConstant.savedHost);
    GenshinDBResponseJson response = await get(
        host: deployHost ?? ApiPath.baseHost,
        path: ApiPath.searchCharacters,
        params: {
          "name": keyword,
        });

    return response;
  }

  @override
  Future<GenshinDBResponseJson> getCharacterTalents(
      {required String name}) async {
    final deployHost = await StorageService().get(StorageConstant.savedHost);
    GenshinDBResponseJson response = await get(
      host: deployHost ?? ApiPath.baseHost,
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
    final deployHost = await StorageService().get(StorageConstant.savedHost);
    return await get(
      host: deployHost ?? ApiPath.baseHost,
      path: ApiPath.getDetailCharacter,
      params: {
        "name": name,
      },
    );
  }

  @override
  Future<GenshinDBResponseJson> getCharacterAscension(
      {required String name}) async {
    final deployHost = await StorageService().get(StorageConstant.savedHost);
    return await get(
      host: deployHost ?? ApiPath.baseHost,
      path: ApiPath.getCharacterAscension,
      params: {
        "name": name,
      },
    );
  }
}
