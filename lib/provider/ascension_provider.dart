import 'package:genshin_app/models/ascension_model.dart';
import 'package:genshin_app/models/base_provider_model.dart';
import 'package:genshin_app/provider/base_provider.dart';
import 'package:genshin_app/repository/abstract/character_repo.dart';
import 'package:genshin_app/repository/impl/character_repo_impl.dart';
import 'package:get/get.dart';
import 'package:dio/src/dio_error.dart';
import 'package:flutter_core/bases/exceptions.dart';

class AscensionProvider extends BaseProvider {
  BaseProviderModel<List<List<AscensionModel>>> _ascensionData =
      BaseProviderModel.init(data: []);
  BaseProviderModel<List<List<AscensionModel>>> get ascensionData =>
      _ascensionData;
  final CharacterRepo characterRepo =
      Get.find<CharacterRepo>(tag: CharacterRepoImpl.tag);

  // UI state
  int currentAscension = 1;

  void setCurrentAsension(int value) {
    currentAscension = value;
    notifyListeners();
  }

  void getAscension({required String name}) async {
    _ascensionData = BaseProviderModel.loading();
    notifyListeners();

    try {
      final response = await characterRepo.getAscension(name: name);
      _ascensionData = BaseProviderModel.succeed(response);
    } on DioError catch (error) {
      setErrorMessage(error.message);
      _ascensionData =
          BaseProviderModel.failed(ServerResponseError(error.message));
    } finally {
      notifyListeners();
    }
  }
}
