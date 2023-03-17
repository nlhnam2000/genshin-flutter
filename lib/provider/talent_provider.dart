import 'package:dio/dio.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/models/combat_model.dart';
import 'package:genshin_app/provider/base_provider.dart';
import 'package:genshin_app/repository/abstract/character_repo.dart';
import 'package:genshin_app/repository/impl/character_repo_impl.dart';
import 'package:get/get.dart';
import 'package:flutter_core/bases/exceptions.dart';

class TalentProvider extends BaseProvider {
  BaseProviderModel<List<CombatModel>> _data = BaseProviderModel.init(data: []);
  BaseProviderModel<List<CombatModel>> get data => _data;

  final CharacterRepo characterRepo =
      Get.find<CharacterRepo>(tag: CharacterRepoImpl.tag);

  Future<void> getTalents({required String name}) async {
    _data = BaseProviderModel.loading();

    try {
      List<CombatModel> response = await characterRepo.getTalents(name: name);
      _data = BaseProviderModel.succeed(response);
    } on DioError catch (error) {
      setErrorMessage(error.message);
      _data = BaseProviderModel.failed(ServerResponseError(error.message));
    } finally {
      notifyListeners();
    }
  }
}
