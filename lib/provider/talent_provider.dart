import 'package:dio/dio.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/models/combat_model.dart';
import 'package:genshin_app/models/combat_response_model.dart';
import 'package:genshin_app/models/image_model.dart';
import 'package:genshin_app/provider/base_provider.dart';
import 'package:genshin_app/repository/abstract/character_repo.dart';
import 'package:genshin_app/repository/impl/character_repo_impl.dart';
import 'package:get/get.dart';
import 'package:flutter_core/bases/exceptions.dart';

class TalentProvider extends BaseProvider {
  BaseProviderModel<CombatResponseModel> _data = BaseProviderModel.init();
  BaseProviderModel<CombatResponseModel> get data => _data;
  // BaseProviderModel<ImageModel> _talentImage = BaseProviderModel.init();
  // BaseProviderModel<ImageModel> get talentImage => _talentImage;

  final List<CombatModel> combats = [];

  final CharacterRepo characterRepo =
      Get.find<CharacterRepo>(tag: CharacterRepoImpl.tag);

  Future<void> getTalents({required String name}) async {
    _data = BaseProviderModel.loading();

    try {
      CombatResponseModel response = await characterRepo.getTalents(name: name);
      _data = BaseProviderModel.succeed(response);
      // combats.addAll(_data.data!.combats);
      // _talentImage = BaseProviderModel.succeed(_data.data!.images);
    } on DioError catch (error) {
      setErrorMessage(error.message);
      _data = BaseProviderModel.failed(ServerResponseError(error.message));
      // _talentImage =
      //     BaseProviderModel.failed(ServerResponseError(error.message));
    } finally {
      notifyListeners();
    }
  }
}
