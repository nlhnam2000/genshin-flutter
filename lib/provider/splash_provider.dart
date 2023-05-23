import 'package:flutter/material.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/network/api_path.dart';
import 'package:genshin_app/network/api_service.dart';
import 'package:genshin_app/network/interceptor.dart';
import 'package:genshin_app/provider/base_provider.dart';
import 'package:genshin_app/repository/abstract/character_repo.dart';
import 'package:genshin_app/repository/impl/character_repo_impl.dart';
import 'package:get/get.dart';

class SplashProvider extends BaseProvider {
  BaseProviderModel<bool> connectionCheck = BaseProviderModel.init();
  final TextEditingController textController = TextEditingController();
  final CharacterRepo characterRepo =
      Get.find<CharacterRepo>(tag: CharacterRepoImpl.tag);

  Future<void> testConnnection() async {
    /// call any api to test if the server url provided
    /// is correct or not
    /// if there is a response, then tell the view to navigate to home
    /// otherwise alert the message
    connectionCheck = BaseProviderModel.loading();
    notifyListeners();
    bool status = await fetchApi();
    connectionCheck = BaseProviderModel.succeed(status);
    notifyListeners();
  }

  Future<bool> fetchApi() async {
    bool result = false;
    try {
      GenshinDBResponseJson response =
          await get(host: textController.text, path: ApiPath.getAllCharacters);
      result = true;
    } catch (e) {
      result = false;
    }

    return result;
  }
}
