import 'package:dio/dio.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/models/character_model.dart';
import 'package:genshin_app/provider/base_provider.dart';
import 'package:genshin_app/repository/abstract/character_repo.dart';
import 'package:genshin_app/repository/impl/character_repo_impl.dart';
import 'package:get/get.dart';
import 'package:flutter_core/bases/exceptions.dart';

class DetailCharacterProvider extends BaseProvider {
  BaseProviderModel<Character> _characterData = BaseProviderModel.init();
  BaseProviderModel<Character> get characterData => _characterData;
  final CharacterRepo characterRepo =
      Get.find<CharacterRepo>(tag: CharacterRepoImpl.tag);

  void getCharacterDetail({required String name}) async {
    _characterData = BaseProviderModel.loading();
    notifyListeners();
    try {
      Character response = await characterRepo.getDetail(name: name);
      _characterData = BaseProviderModel.succeed(response);
    } on DioError catch (error) {
      _characterData =
          BaseProviderModel.failed(ServerResponseError(error.message));
      setErrorMessage(error.message);
    } finally {
      notifyListeners();
    }
  }
}
